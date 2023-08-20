const express = require("express")
const bodyParser = require("body-parser")
const cookieParser = require("cookie-parser")
const uuid = require("uuid")
const path = require('path')
const Urbit = require("@urbit/http-api").Urbit

const app = express()
app.use(bodyParser.urlencoded({extended: true}))
app.use(cookieParser())

// example.com
const myDomain = 'localhost'

// Sessions by sessionToken
const sessions = {}
// AuthRequests by authToken
const requests = {}

// browser session
class Session {
  constructor(ship, authToken) {
    this.ship = ship,
    this.authToken = authToken
  }
}

// auth-server authorisation request & current status
class AuthRequest {
  constructor(ship, turf) {
    this.request = {
      ship: ship, // the ship you're requesting authorisation from
      turf: turf, // your domain
      user: null, // optional username
      code: null, // optional numerical code
      msg: null, // option arbitrary text message
      expire: Date.now() + 900000, // when request should expire
      time: Date.now() // timestamp of request (now)
    }
    this.result = "pending"
  }
}

// urbit API / SSE object
let airlock = undefined

// connect to ship & subscribe
const openAirlock = async () => {
  const api = await Urbit.authenticate({
    ship: "zod",
    url: "localhost:8080",
    code: "lidlut-tabwed-pillex-ridrup",
    verbose: false
  })
  api.onOpen = () => console.log("connection opened")
  api.onRetry = () => console.log("connection retrying")
  api.onError = () => console.log("connection error")
  api.subscribe({
    app: "auth-server",
    path: "/init/all",
    event: handleUpdate
  })
  airlock =  api
}

// handle incoming subscription events from auth-server
const handleUpdate = upd => {
  // if new auth request we previously submitted, update status
  if ("entry" in upd) {
    const authRequest = requests[upd.entry.id]
    if (!authRequest) return
    authRequest.result = upd.entry.result
    requests[upd.entry.id] = authRequest
  // if status update for request we previously submitted, update status
  } else if ("status" in upd) {
    const authRequest = requests[upd.status.id]
    if (!authRequest) return
    authRequest.result = upd.status.result
    requests[upd.status.id] = authRequest
    // if state initialisation backlog, update anything we already know about
    // and skip the ones we don't know
  } else if ("initAll" in upd) {
    upd.initAll.logs.map(item => {
      const authRequest = requests[item.id]
      if (!authRequest) return
      authRequest.result = item.result
      requests[item.id] = authRequest
    })
  }
}

// send a new authorisation request to auth-server
const sendRequest = (authToken, authRequest) => {
  airlock.poke({
    app: "auth-server",
    mark: "auth-server-do",
    json: {
      new: {
        id: authToken,
        request: authRequest.request
      }
    }
  })
}

// login page
const loginForm = `
  <html>
    <head></head>
    <body>
      <form action="/" method="post">
        <input type="text" id="username" name="username">
        <input type="submit" value="Login">
      </form>
    </body>
  </html>                  
`

// status page
const statusPage = (ship, result) => {
  const statusString =
    // "pending" is only used inside this node app, the rest are
    // the possible auth-server statuses. The last one is "error"
    (result === "pending") ? "SERVER SENDING TO AUTH-SERVER" :
    (result === "sent") ? "AUTH-SERVER SENDING TO AUTH" :
    (result === "got") ? "RECEIVED BY AUTH" :
    (result === "yes") ? "APPROVED BY USER" :
    (result === "no") ? "REJECTED BY USER" :
    (result === "expire") ? "REQUEST EXPIRED" :
    (result === "abort") ? "REQUEST CANCELLED" :
    "FAILED DUE TO ERROR"
  return `
  <html>
  <head></head>
  <body>
    <b>ship:</b> ~${ship}<br>
    <b>status:</b> ${statusString}<br>
    <small>(refresh to update)</small>
  </body>
  </html>
  `
}

// connect to urbit
openAirlock()

// get request handler
app.get("/", (req, res) => {
  if (!req.cookies) {
    res.send(loginForm)
    return
  }
  const sessionToken = req.cookies["session_token"]
  if (!sessionToken) {
    res.send(loginForm)
    return
  }
  const session = sessions[sessionToken]
  if (!session) {
    res.send(loginForm)
    return
  }
  const authRequest = requests[session.authToken]
  if (!authRequest) {
    res.send(loginForm)
    return
  }
  res.send(statusPage(session.ship, authRequest.result))
})

//post request handler
app.post("/", (req, res) => {
  const { username } = req.body
  if (!username) {
    res.send(loginForm)
    return
  }

  const ship = username.substring(1)
  const sessionToken = uuid.v4()
  const authToken = uuid.v4()
  const session = new Session(ship, authToken)
  const authRequest = new AuthRequest(ship, myDomain)

  sendRequest(authToken, authRequest)

  sessions[sessionToken] = session
  requests[authToken] = authRequest

  res.cookie("session_token", sessionToken)
  res.redirect(303, "/")
})

// serve manifest
app.get("/.well-known/appspecific/org.urbit.auth.json", (req, res) => {  
  res.sendFile(path.join(__dirname, '/org.urbit.auth.json'))
})

// Auth tries to retrieve the manifest from port 80
// then follows redirects so you need to run port 80 for Auth
// to say the request is authentic
app.listen(80)
