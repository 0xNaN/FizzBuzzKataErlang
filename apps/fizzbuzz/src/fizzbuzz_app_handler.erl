-module(fizzbuzz_app_handler).
-export([ init/3,
          handle/2,
          terminate/3
        ]).

init(_Transport, Req, []) ->
    {ok, Req, undefined}.

handle(Req, State) ->
    {ok, Req}.

terminate(_Reason, _Req, _State) ->
    ok.
