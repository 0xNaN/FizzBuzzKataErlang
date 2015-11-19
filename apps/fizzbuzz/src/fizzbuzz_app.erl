%%%-------------------------------------------------------------------
%% @doc fizzbuzz public API
%% @end
%%%-------------------------------------------------------------------

-module('fizzbuzz_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'fizzbuzz_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================