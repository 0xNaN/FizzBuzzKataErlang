%%%-------------------------------------------------------------------
%% @doc fizzbuzz public API
%% @end
%%%-------------------------------------------------------------------

-module('fizzbuzz_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

-define(C_ACCEPTORS, 100).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    Routes = routes(),
    Dispatch = cowboy_router:compile(Routes),
    TransOpts = [{port, 8080}],
    ProtoOpts = [{env, [{dispatch, Dispatch}]}],
    {ok, _}   = cowboy:start_http(http, ?C_ACCEPTORS, TransOpts, ProtoOpts),
    'fizzbuzz_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================


routes() ->
    [
      {'_', [
             {"/:number", fizzbuzz_app_handler, []}
            ]}
    ].
