-module(collector).
-export([start/2, loop/3]).

start(Receiver, Space) ->
    spawn(collector, loop, [Receiver, Space, []]).

loop(Receiver, 0, Content) ->
    Receiver ! {self(), Content};
loop(Receiver, Space, Content) ->
    receive
        {_, Data} ->
            loop(Receiver, Space - 1, [Data | Content])
    end.

-ifdef(TEST).
-include_lib("../test/collector.hrl").
-endif.
