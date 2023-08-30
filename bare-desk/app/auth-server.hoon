::
::  subscription paths:
::
::    /new/all                        All new updates, no initial state,
::
::    /new/all/since/['1678658855227']  All new updates for requests with a
::                                    timestamp greater than the given unix
::                                    ms time, no initial state.
::
::    /new/turf/['domain.tld']        All new updates for domain, no initial
::                                    state.
::
::    /new/turf/wood/['domain~.tld']  All new updates for domain with ++wood
::                                    encoding, no initial state. Wood encoding
::                                    is necessary for domains containing
::                                    characters apart from a-z, 0-9, dot and
::                                    hyphen.
::
::    /new/turf/['domain.tld']/since/['1678658855227']  All new updates for
::                                    requests with timestamps greater than the
::                                    given unix ms time & for the given domain.
::                                    No initial state.

::    /new/turf/wood/['domain~.tld']/since/['1678658855227']  New updates
::                                    for requests with timestamps greater than
::                                    the given unix ms time & for the given
::                                    domain with ++wood encoding. No initial
::                                    state.
::
::    /new/ship/['sampel-palnet']     New updates for the specified ship,
::                                    no initial state. Note the ship is
::                                    specified without the leading ~ eg
::                                    'sampel' not '~sampel'.
::
::    /new/ship/['sampel-palnet']/since/['1678658855227']  All new updates for
::                                    the specified ship, for requests with
::                                    timestamps greater than the given unix
::                                    ms time. No initial state. Note the ship
::                                    is specified without the leading ~ eg
::                                    'sampel' not '~sampel'.
::
::    /new/id/['01a618cc-0c65-4278-853b-21d9e1289b93']  All new updates for
::                                    the specified UUID, no initial state.
::
::    /init/all                       All new upates, all initial state.
::
::    /init/all/since/['1678658855227']  New updates for requests with a
::                                    timestamp greater than the given unix
::                                    ms time, and all initial state for
::                                    requests with a timestamp greater than
::                                    the given unix ms time.
::
::    /init/turf/['domain.tld']       New updates for domain, all initial
::                                    state for that domain.
::
::    /init/turf/wood/['domain~.tld'] New updates and inintial state for domain
::                                    with ++wood encoding. Wood encoding is
::                                    necessary for domains containing
::                                    characters apart from a-z, 0-9, dot and
::                                    hyphen.
::
::    /init/turf/['domain.tld']/since/['1678658855227']  New updates and initial
::                                    state for requests with timestamps greater
::                                    than the given unix ms time & for the
::                                    given domain.
::
::    /init/turf/wood/['domain.tld']/since/['1678658855227']  New updates and
::                                    initial state for requests with timestamps
::                                    greater than the given unix ms time & for
::                                    the given domain. With ++wood encoding.
::
::    /init/ship/['sampel-palnet']    New updates and inital state for the
::                                    specified ship. Note the ship is specified
::                                    without the leading ~ eg 'sampel' not
::                                    '~sampel'.
::
::    /init/ship/['sampel-palnet']/since/['1678658855227']  New updates and
::                                    initial state for the specified ship,
::                                    for requests with timestamps greater than
::                                    the given unix ms time. Note the ship
::                                    is specified without the leading ~ eg
::                                    'sampel' not '~sampel'.
::
::    /init/uuid/['01a618cc-0c65-4278-853b-21d9e1289b93']  New updates and
::                                    initial state for the specified UUID.
::
::  scry paths:
::
::    /x/proof/['domain.tld']         Generate an attestation that this ship is
::                                    an agent of the given domain. This will
::                                    produce a JSON object that should be added
::                                    to a JSON array that's published at:
::                      domain.tld/.well-known/appspecific/org.urbit.auth.json
::
::    /x/proof/wood/['domain.tld']    Generate an attestation that this ship is
::                                    an agent of the given domain with ++wood
::                                    encoding. Wood encoding is necessary if
::                                    the domain contains characters apart from
::                                    a-z, 0-9, dot and hyphen.
::
::    /x/all                          Get all initial state.
::
::    /x/all/since/['1678658855227']  Gat initial state for requests with a
::                                    timestamp greater than the given unix ms
::                                    time.
::
::    /x/all/before/['1678658855227']  Gat initial state for requests with a
::                                    timestamp less than the given unix ms
::                                    time.
::
::    /x/ship/['sampel-palnet']       Get initial state for the given ship. Note
::                                    the ship excludes the leading tilde, eg
::                                    'sampel' not '~sampel'.
::
::    /x/ship/['sampel-palnet']/since/['1678658855227']  Get initial state for
::                                    the given ship, for requests with a
::                                    timestamp greater than the given unix ms
::                                    time.
::
::    /x/ship/['sampel-palnet']/before/['1678658855227']  Get initial state for
::                                    the given ship, for requests with a
::                                    timestamp less than the given unix ms
::                                    time.
::
::    /x/turf/['domain.tld']          Get initial state for the given domain.
::
::    /x/turf/['domain.tld']/since/['1678658855227']  Get initial state for the
::                                    given domain, for requests with timestamps
::                                    greater than the given unix ms time.
::
::    /x/turf/['domain.tld']/before/['1678658855227']  Initial state for the
::                                    given domain, for requests with
::                                    timestamps less than the given unix ms
::                                    time.
::
::    /x/turf/wood/['domain~.tld']    Get initial state for the given domain
::                                    with ++wood encoding. Wood encoding is
::                                    necessary for domains that contain
::                                    characters apart from a-z, 0-9, dot and
::                                    hyphen.
::
::    /x/turf/wood/['domain~.tld']/since/['1678658855227']  Get initial state
::                                    for the given domain with ++wood
::                                    encoding, for requests with timestamps
::                                    greater than the given unix ms time.
::
::    /x/turf/wood/['domain~.tld']/before/['1678658855227']  Initial state for
::                                    the given domain with ++wood encoding, for
::                                    requests with timestamps less than the
::                                    given unix ms time.
::
::    /x/id/['01a618cc-0c65-4278-853b-21d9e1289b93']  Get current state
::                                    for the given request UUID.
::
::    /x/id/status/['01a618cc-0c65-4278-853b-21d9e1289b93']  Get current
::                                    status of the given request UUID.
::
/-  *auth-server
/+  *auth-server, default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 =entries =log =by-ship]
+$  card  card:agent:gall
++  sort-items
  |=  items=logs
  ^-  logs
  %+  sort  items
  |=  [a=item b=item]
  ?:  =(time.req.a time.req.b)
    (lth id.a id.b)
  (lte time.req.a time.req.b)
++  flat-log
  |=  [=entries =log since=(unit time) before=(unit time)]
  ^-  logs
  %-  flop
  %+  roll
    ?:  &(?=(~ since) ?=(~ before))
      (tap:orm log)
    (tap:orm (lot:orm log since before))
  |=  [[key=@da val=log-val] out=logs]
  ?:  ?=(%.y -.val)
    ?~  ent=(~(get by entries) p.val)
      out
    [[p.val u.ent] out]
  %-  weld
  :_  out
  %+  murn  (sort ~(tap in p.val) lth)
  |=(=id `(unit item)`(both (some id) (~(get by entries) id)))
++  put-log
  |=  [=log =time =id]
  ^-  ^log
  ?.  (has:orm log time)
    (put:orm log time %.y id)
  =/  val  (got:orm log time)
  ?:  ?=(%.n -.val)
    (put:orm log time val(p (~(put in p.val) id)))
  (put:orm log time [%.n (~(gas in *(set ^id)) p.val id ~)])
++  make-paths
  |=  [our=ship =turf =ship =id =time sup=bitt:gall]
  ^-  (list path)
  =/  uuid-knot=@ta  (id-to-uuid id)
  =/  ship-knot=@ta  (crip =+((scow %p ship) ?>(?=(^ -) t.-)))
  =/  turf-knot=@ta  (en-turf:html turf)
  =/  turf-wood=@ta  (wood (en-turf:html turf))
  %+  weld
    ^-  (list path)
    :~  /new/all
        /new/turf/[turf-knot]
        /new/turf/wood/[turf-wood]
        /new/ship/[ship-knot]
        /new/uuid/[uuid-knot]
        /init/all
        /init/turf/[turf-knot]
        /init/turf/wood/[turf-wood]
        /init/ship/[ship-knot]
        /init/uuid/[uuid-knot]
    ==
  %~  tap  in
  %+  roll  ~(tap by sup)
  |=  [[* (pair ^ship path)] paths=(set path)]
  ?.  =(our p)
    paths
  ?+    q  paths
      [?(%init %new) %all %since @ ~]
    =/  since=(unit @da)
      (bind (rush i.t.t.t.q dem) from-unix-ms:chrono:userlib)
    ?.  &(?=(^ since) (gth time u.since))
      paths
    (~(put in paths) q)
  ::
      [?(%init %new) %turf @ %since @ ~]
    =/  since=(unit @da)
      (bind (rush i.t.t.t.t.q dem) from-unix-ms:chrono:userlib)
    ?.  &(=(turf-knot i.t.t.q) ?=(^ since) (gth time u.since))
      paths
    (~(put in paths) q)
  ::
      [?(%init %new) %turf %wood @ %since @ ~]
    =/  since=(unit @da)
      (bind (rush i.t.t.t.t.t.q dem) from-unix-ms:chrono:userlib)
    ?.  &(=(turf-wood i.t.t.t.q) ?=(^ since) (gth time u.since))
      paths
    (~(put in paths) q)
  ::
      [?(%init %new) %ship @ %since @ ~]
    =/  since=(unit @da)
      (bind (rush i.t.t.t.t.q dem) from-unix-ms:chrono:userlib)
    ?.  &(=(ship-knot i.t.t.q) ?=(^ since) (gth time u.since))
      paths
    (~(put in paths) q)
  ==
--
::
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-init
  ^-  (quip card _this)
  :_  this
  [%pass /eyre %arvo %e %connect `/'auth-server' %auth-server]~
::
++  on-save  !>(state)
::
++  on-load
  |=  old=vase
  ^-  (quip card _this)
  =+  !<(v=versioned-state old)
  ?-  v
    [%0 *]  `this(state v)
  ==
::
++  on-poke
  |=  [=mark =vase]
  |^  ^-  (quip card _this)
  ?>  =(our.bowl src.bowl)
  =^  cards  state
    ?+  mark  (on-poke:def mark vase)
      %auth-server-do            (handle-action !<(action vase))
      %handle-http-request  (handle-http !<([@ta inbound-request:eyre] vase))
    ==
  [cards this]
  ++  handle-http
    |=  [rid=@ta req=inbound-request:eyre]
    ^-  (quip card _state)
    :_  state
    ?.  authenticated.req
      (give-http rid [307 ['Location' '/~/login?redirect='] ~] ~)
    ?.  ?=(%'GET' method.request.req)
      %^    give-http
          rid
        :-  405
        :~  ['Content-Type' 'text/html']
            ['Content-Length' '31']
            ['Allow' 'GET']
        ==
      (some (as-octs:mimes:html '<h1>405 Method Not Allowed</h1>'))
    =/  =purl:eyre
      =/  full=(unit purl:eyre)  (rush url.request.req auri:de-purl:html)
      ?^  full  u.full
      :-  *hart:eyre
      (rash url.request.req ;~(plug apat:de-purl:html yque:de-purl:html))
    =/  path=(list @t)  q.q.purl
    ?+    path  (on-poke:def mark vase)
        [%auth-server ~]
      =;  =octs
        %^  give-http  rid
          :-  200
          :~  ['Content-Type' 'text/html']
              ['Content-Length' (crip (a-co:co p.octs))]
          ==
        (some octs)
      %-  as-octs:mimes:html
      %-  crip
      %-  en-xml:html
      ^-  manx
      ;html
        ;head
          ;meta(charset "utf-8");
          ;style
            ;+  ;/(style)
          ==
        ==
        ;body
          ;main
            ;h3: Manifest Generator
            ;p
              ; This tool creates an attestation that this
              ; ship is an agent of your domain. Enter your domain,
              ; click generate, and publish the file on your site
              ; at the URL path:
            ==
            ;p
              ;code: /.well-known/appspecific/org.urbit.auth.json
            ==
            ;p
              ;small
                ; Note: This tool works for a single ship and
                ; domain only. It also only accepts lowercase latin
                ; letters, numbers, hyphens and dots. If you need a
                ; more complex configuration or have other characters
                ; in your domain, you will need to edit the file manually
                ; or use the API instead.
              ==
            ==
            ;form(method "get", action "/auth-server/manifest")
              ;input
                =type         "text"
                =id           "turf"
                =name         "turf"
                =required     ""
                =placeholder  "example.com"
                =pattern      "^[a-z0-9-]+(\\.[a-z0-9-]+)*$"
                ;+  ;/("")
              ==
              ;input(type "submit", value "Generate");
            ==
          ==
        ==
      ==
    ::
        [%auth-server %manifest ~]
      =/  query=(map @t @t)  (~(gas by *(map @t @t)) r.purl)
      =/  =turf  (need (de-turf:html (~(got by query) 'turf')))
      =/  =octs
        %-  as-octs:mimes:html
        %-  en:json:html
        [%a (proof:enjs (make-proof our.bowl now.bowl turf)) ~]
      %^  give-http  rid
        :-  200
        :~  ['Content-Type' 'application/json']
            :-  'Content-Disposition'
            'attachment; filename="org.urbit.auth.json"'
            ['Content-Length' (crip (a-co:co p.octs))]
        ==
      (some octs)
    ==
  ::
  ++  handle-action
    |=  act=action
    ^-  (quip card _state)
    ?-  act
      [%new *]
    ?>  (check-id id.act)
    ?<  (~(has by entries) id.act)
    ?>  ?=(^ turf.req.act)
    =/  res=result
      ?:((lte exp.req.act (min time.req.act now.bowl)) %expire %sent)
    =/  paths=(list path)
      %-  make-paths
      [our.bowl turf.req.act ship.req.act id.act time.req.act sup.bowl]
    =/  =update  [%entry id.act req.act res]
    =/  cards=(list card)
      :-  [%give %fact paths %auth-server-did !>(update)]
      ?:  ?=(%expire res)
        ~
      =/  uuid=@ta         (id-to-uuid id.act)
      =/  ask-wire=wire    /ask/request/[uuid]
      =/  tell-wire=wire   /tell/[uuid]
      =/  tell-path=path   /results/(scot %p our.bowl)/[uuid]
      =/  timer-wire=wire  /timer/[uuid]
      =/  =dock            [ship.req.act %auth]
      :~  [%pass timer-wire %arvo %b %wait exp.req.act]
          [%pass tell-wire %agent dock %watch tell-path]
          [%pass ask-wire %agent dock %poke auth-server-ask+!>([id.act req.act])]
      ==
    :-  cards
    %=  state
      by-ship  (~(put ju by-ship) ship.req.act id.act)
      entries  (~(put by entries) id.act req.act res)
      log  (put-log log time.req.act id.act)
    ==
    ::
        [%cancel *]
      =/  ent=(unit entry)  (~(get by entries) id.act)
      ?.  &(?=(^ ent) ?=(?(%got %sent) res.u.ent))
        `state
      =/  tell-wire=wire  /tell/(id-to-uuid id.act)
      =/  =dock  [ship.req.u.ent %auth]
      =/  paths=(list path)
        %-  make-paths
        :*  our.bowl  turf.req.u.ent  ship.req.u.ent
            id.act  time.req.u.ent  sup.bowl
        ==
      :_  state(entries (~(put by entries) id.act u.ent(res %abort)))
      :~  [%pass tell-wire %agent dock %leave ~]
          [%give %fact paths %auth-server-did !>([%status id.act %abort])]
      ==
    ==
  ++  give-http
    |=  [rid=@ta hed=response-header:http dat=(unit octs)]
    ^-  (list card)
    :~  [%give %fact ~[/http-response/[rid]] %http-response-header !>(hed)]
        [%give %fact ~[/http-response/[rid]] %http-response-data !>(dat)]
        [%give %kick ~[/http-response/[rid]] ~]
    ==
  ++  style
    ^~  %-  trip
    '''
    @media (prefers-color-scheme: light) {
      .scheme {
        background: #f3f2f0;
        color: #24221e;
      }
    }
    @media (prefers-color-scheme: dark) {
      .scheme {
        background: #1c1e21;
        color: #dbdde1;
      }
    }
    body {
      font-family: sans-serif;
      font-size: 1rem;
    }
    main {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      max-width: 60ch;
    }
    '''
  --
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?>  =(our.bowl src.bowl)
  ?+    path  (on-watch:def path)
      [%http-response *]
    `this
  ::
      [%new %all ~]
    `this
  ::
      [%new %turf @ ~]
    ?>  ?=(^ (de-turf:html i.t.t.path))
    `this
  ::
      [%new %turf %wood @ ~]
    ?>  ?=(^ (de-turf:html (woad i.t.t.t.path)))
    `this
  ::
      [%new %ship @ ~]
    ?>  ?=(^ (rush i.t.t.path fed:ag))
    `this
  ::
      [%new %id @ ~]
    =+  (uuid-to-id i.t.t.path)
    `this
  ::
      [%new %all %since @ ~]
    ?>  ?=(^ (rush i.t.t.t.path dem))
    `this
  ::
      [%new %turf @ %since @ ~]
    ?>  ?&  ?=(^ (de-turf:html i.t.t.path))
            ?=(^ (rush i.t.t.t.t.path dem))
        ==
    `this
  ::
      [%new %turf %wood @ %since @ ~]
    ?>  ?&  ?=(^ (de-turf:html (woad i.t.t.t.path)))
            ?=(^ (rush i.t.t.t.t.t.path dem))
        ==
    `this
  ::
      [%new %ship @ %since @ ~]
    ?>  ?&  ?=(^ (rush i.t.t.path fed:ag))
            ?=(^ (rush i.t.t.t.t.path dem))
        ==
    `this
  ::
      [%init %all ~]
    =/  =logs  (sort-items ~(tap by entries))
    :_  this
    [%give %fact ~ %auth-server-did !>(`update`[%init-all ~ ~ logs])]~
  ::
      [%init %turf *]
    =/  =turf
      ?+  t.t.path   (on-watch:def path)
        [@ ~]        (need (de-turf:html i.t.t.path))
        [%wood @ ~]  (need (de-turf:html (woad i.t.t.t.path)))
      ==
    =/  =logs
      %-  sort-items
      (skim ~(tap by entries) |=([* req=request *] =(turf turf.req)))
    :_  this
    [%give %fact ~ %auth-server-did !>(`update`[%init-turf turf ~ ~ logs])]~
  ::
      [%init %ship @ ~]
    =/  =ship  (rash i.t.t.path fed:ag)
    =/  =logs
      %-  sort-items
      %+  murn  ~(tap in (~(get ju by-ship) ship))
      |=(=id `(unit item)`(both (some id) (~(get by entries) id)))
    :_  this
    [%give %fact ~ %auth-server-did !>(`update`[%init-ship ship ~ ~ logs])]~
  ::
      [%init %id @ ~]
    =/  =id  (uuid-to-id i.t.t.path)
    =/  ent=(unit entry)  (~(get by entries) id)
    ?~  ent
      `this
    :_  this
    [%give %fact ~ %auth-server-did !>(`update`[%entry id u.ent])]~
  ::
      [%init %all %since @ ~]
    =/  since=@da  (from-unix-ms:chrono:userlib (rash i.t.t.t.path dem))
    =/  =logs  (flat-log entries log `since ~)
    :_  this
    [%give %fact ~ %auth-server-did !>(`update`[%init-all `since ~ logs])]~
  ::
      [%init %turf *]
    =/  [=turf since=@da]
      ?+    t.t.path  (on-watch:def path)
          [@ %since @ ~]
        :-  (need (de-turf:html i.t.t.path))
        (from-unix-ms:chrono:userlib (rash i.t.t.t.t.path dem))
      ::
          [%wood @ %since @ ~]
        :-  (need (de-turf:html (woad i.t.t.t.path)))
        (from-unix-ms:chrono:userlib (rash i.t.t.t.t.t.path dem))
      ==
    =/  =update
      :-  %init-turf
      :^  turf  `since  ~
      %+  skim
        (flat-log entries log `since ~)
      |=([* req=request *] =(turf turf.req))
    :_  this
    [%give %fact ~ %auth-server-did !>(update)]~
  ::
      [%init %ship @ %since @ ~]
    =/  =ship  (rash i.t.t.path fed:ag)
    =/  since=@da  (from-unix-ms:chrono:userlib (rash i.t.t.t.t.path dem))
    =/  =update
      :-  %init-ship
      :^  ship  `since  ~
      %-  sort-items
      %+  murn  ~(tap in (~(get ju by-ship) ship))
      |=  i=id
      ^-  (unit item)
      =/  maybe-item=(unit item)  (both (some i) (~(get by entries) i))
      ?.  &(?=(^ maybe-item) (gth time.req.u.maybe-item since))
        ~
      maybe-item
    :_  this
    [%give %fact ~ %auth-server-did !>(update)]~
  ==
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+    wire  (on-agent:def wire sign)
      [%ask %request @ ~]
    =/  uuid=@ta  i.t.t.wire
    =/  =id  (uuid-to-id uuid)
    ?.  ?=([%poke-ack *] sign)
      (on-agent:def wire sign)
    ?~  p.sign
      `this
    =/  ent=(unit entry)  (~(get by entries) id)
    =/  tell-wire=^wire  /tell/[uuid]
    ?~  ent
      :_  this
      [%pass tell-wire %agent [src.bowl %auth] %leave ~]~
    ?.  ?=(?(%sent %got) res.u.ent)
      :_  this
      [%pass tell-wire %agent [src.bowl %auth] %leave ~]~
    =/  timer-wire=^wire  /timer/[uuid]
    =/  paths=(list path)
      %-  make-paths
      [our.bowl turf.req.u.ent ship.req.u.ent id time.req.u.ent sup.bowl]
    :_  this(entries (~(put by entries) id u.ent(res %error)))
    :*  [%pass tell-wire %agent [src.bowl %auth] %leave ~]
        [%give %fact paths %auth-server-did !>(`update`[%status id %error])]
        ?.  (lte exp.req.u.ent now.bowl)
          ~
        [%pass timer-wire %arvo %b %rest exp.req.u.ent]~
    ==
  ::
      [%tell @ ~]
    =/  uuid=@ta  i.t.wire
    =/  =id  (uuid-to-id uuid)
    ?+    sign  (on-agent:def wire sign)
        [%watch-ack *]
      ?~  p.sign
        `this
      =/  ent=(unit entry)  (~(get by entries) id)
      ?~  ent
        `this
      ?.  ?=(?(%got %sent) res.u.ent)
        `this
      =/  timer-wire=^wire  /timer/[uuid]
      =/  paths=(list path)
        %-  make-paths
        [our.bowl turf.req.u.ent ship.req.u.ent id time.req.u.ent sup.bowl]
      :_  this(entries (~(put by entries) id u.ent(res %error)))
      :~  [%give %fact paths %auth-server-did !>(`update`[%status id %error])]
          [%pass timer-wire %arvo %b %rest exp.req.u.ent]
      ==
    ::
        [%kick ~]
      =/  ent=(unit entry)  (~(get by entries) id)
      ?~  ent
        `this
      ?.  ?=(?(%got %sent) res.u.ent)
        `this
      =/  =path  /results/(scot %p our.bowl)/[uuid]
      :_  this
      [%pass wire %agent [src.bowl %auth] %watch path]~
    ::
        [%fact *]
      =/  [=mark =vase]  cage.sign
      ?.  ?=(%auth-server-tell mark)
        `this
      =/  res=result  !<(result vase)
      =/  ent=(unit entry)  (~(get by entries) id)
      ?~  ent
        :_  this
        [%pass wire %agent [src.bowl %auth] %leave ~]~
      ?.  ?=(?(%got %sent) res.u.ent)
        :_  this
        [%pass wire %agent [src.bowl %auth] %leave ~]~
      ?:  |(=(res res.u.ent) ?=(%sent res))
        `this
      =/  timer-wire=^wire  /timer/[uuid]
      =/  paths=(list path)
        %-  make-paths
        [our.bowl turf.req.u.ent ship.req.u.ent id time.req.u.ent sup.bowl]
      :_  this(entries (~(put by entries) id u.ent(res res)))
      :-  [%give %fact paths %auth-server-did !>(`update`[%status id res])]
      ?:  ?=(%got res)
        ~
      :~  [%pass wire %agent [src.bowl %auth] %leave ~]
          [%pass timer-wire %arvo %b %rest exp.req.u.ent]
      ==
    ==
  ==
++  on-arvo
  |=  [=wire sign=sign-arvo]
  ^-  (quip card _this)
  ?:  ?=([%eyre ~] wire)
    ?.  ?=([%eyre %bound *] sign)
      (on-arvo:def wire sign)
    ~?  !accepted.sign
      %eyre-rejected-auth-server-binding
    `this
  ?.  &(?=([%timer @ ~] wire) ?=([%behn %wake *] sign))
    (on-arvo:def wire sign)
  =/  uuid=@ta  i.t.wire
  =/  =id  (uuid-to-id uuid)
  =/  ent=(unit entry)  (~(get by entries) id)
  ?~  ent  `this
  ?.  ?=(?(%got %sent) res.u.ent)
    `this
  =/  paths=(list path)
    %-  make-paths
    [our.bowl turf.req.u.ent ship.req.u.ent id time.req.u.ent sup.bowl]
  =/  =dock  [ship.req.u.ent %auth]
  ?:  |(?=(~ error.sign) (lte exp.req.u.ent now.bowl))
    :_  this(entries (~(put by entries) id u.ent(res %expire)))
    :~  [%give %fact paths %auth-server-did !>(`update`[%status id %expire])]
        [%pass /tell/[uuid] %agent dock %leave ~]
    ==
  :_  this
  [%pass wire %arvo %b %wait exp.req.u.ent]~
::
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  ?+    path  (on-peek:def path)
      [%x %proof *]
    =/  =turf
      ?+  t.t.path   (on-peek:def path)
        [@ ~]        (need (de-turf:html i.t.t.path))
        [%wood @ ~]  (need (de-turf:html (woad i.t.t.t.path)))
      ==
    :^  ~  ~  %json
    !>  ^-  json
    %-  proof:enjs
    (make-proof our.bowl now.bowl turf)
  ::
      [%x %all *]
    ?+    t.t.path  (on-peek:def path)
        ~
      ``auth-server-did+!>(`update`[%init-all ~ ~ (flat-log entries log ~ ~)])
    ::
        [%since @ ~]
      =/  since=@da  (from-unix-ms:chrono:userlib (rash i.t.t.t.path dem))
      :^  ~  ~  %auth-server-did
      !>(`update`[%init-all `since ~ (flat-log entries log `since ~)])
    ::
        [%before @ ~]
      =/  before=@da  (from-unix-ms:chrono:userlib (rash i.t.t.t.path dem))
      :^  ~  ~  %auth-server-did
      !>(`update`[%init-all ~ `before (flat-log entries log ~ `before)])
    ==
  ::
      [%x %ship *]
    ?+    t.t.path  (on-peek:def path)
        [@ ~]
      =/  =ship  (rash i.t.t.path fed:ag)
      :^  ~  ~  %auth-server-did
      !>  ^-  update
      :-  %init-ship
      :^  ship  ~  ~
      %-  sort-items
      %+  murn  ~(tap in (~(get ju by-ship) ship))
      |=(=id `(unit item)`(both (some id) (~(get by entries) id)))
    ::
        [@ %since @ ~]
      =/  =ship  (rash i.t.t.path fed:ag)
      =/  since=@da  (from-unix-ms:chrono:userlib (rash i.t.t.t.t.path dem))
      :^  ~  ~  %auth-server-did
      !>  ^-  update
      :-  %init-ship
      :^  ship  `since  ~
      %-  sort-items
      %+  murn  ~(tap in (~(get ju by-ship) ship))
      |=  =id
      ^-  (unit item)
      =/  ent=(unit entry)  (~(get by entries) id)
      ?.  &(?=(^ ent) (gth time.req.u.ent since))
        ~
      (some id u.ent)
    ::
        [@ %before @ ~]
      =/  =ship  (rash i.t.t.path fed:ag)
      =/  before=@da  (from-unix-ms:chrono:userlib (rash i.t.t.t.t.path dem))
      :^  ~  ~  %auth-server-did
      !>  ^-  update
      :-  %init-ship
      :^  ship  ~  `before
      %-  sort-items
      %+  murn  ~(tap in (~(get ju by-ship) ship))
      |=  =id
      ^-  (unit item)
      =/  ent=(unit entry)  (~(get by entries) id)
      ?.  &(?=(^ ent) (gth before time.req.u.ent))
        ~
      (some id u.ent)
    ==
  ::
      [%x %turf *]
    ?+    t.t.path  (on-peek:def path)
        ?([@ ~] [%wood @ ~])
      =/  =turf
        ?-  t.t.path
          [@ ~]        (need (de-turf:html i.t.t.path))
          [%wood @ ~]  (need (de-turf:html (woad i.t.t.t.path)))
        ==
      :^  ~  ~  %auth-server-did
      !>  ^-  update
      :-  %init-turf
      :^  turf  ~  ~
      %-  sort-items
      (skim ~(tap by entries) |=([* req=request *] =(turf turf.req)))
    ::
        ?([@ %since @ ~] [%wood @ %since @ ~])
      =/  [=turf since=@da]
        ?-    t.t.path
            [@ %since @ ~]
          :-  (need (de-turf:html i.t.t.path))
          (from-unix-ms:chrono:userlib (rash i.t.t.t.t.path dem))
        ::
            [%wood @ %since @ ~]
          :-  (need (de-turf:html (woad i.t.t.t.path)))
          (from-unix-ms:chrono:userlib (rash i.t.t.t.t.t.path dem))
        ==
      :^  ~  ~  %auth-server-did
      !>  ^-  update
      :-  %init-turf
      :^  turf  `since  ~
      %+  skim
        (flat-log entries log `since ~)
      |=([* req=request *] =(turf turf.req))
    ::
        ?([@ %before @ ~] [%wood @ %before @ ~])
      =/  [=turf before=@da]
        ?-    t.t.path
            [@ %before @ ~]
          :-  (need (de-turf:html i.t.t.path))
          (from-unix-ms:chrono:userlib (rash i.t.t.t.t.path dem))
        ::
            [%wood @ %before @ ~]
          :-  (need (de-turf:html (woad i.t.t.t.path)))
          (from-unix-ms:chrono:userlib (rash i.t.t.t.t.t.path dem))
        ==
      :^  ~  ~  %auth-server-did
      !>  ^-  update
      :-  %init-turf
      :^  turf  ~  `before
      %+  skim
        (flat-log entries log ~ `before)
      |=([* req=request *] =(turf turf.req))
    ==
  ::
      [%x %id *]
    ?+    t.t.path  (on-peek:def path)
        [@ ~]
      =/  =id  (uuid-to-id i.t.t.path)
      ``auth-server-did+!>(`update`[%entry id (~(got by entries) id)])
    ::
        [%status @ ~]
      =/  =id  (uuid-to-id i.t.t.t.path)
      ``auth-server-did+!>(`update`[%status id res:(~(got by entries) id)])
    ==
  ==
::
++  on-leave  on-leave:def
++  on-fail  on-fail:def
--
