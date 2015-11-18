-module(fizzbuzz).
-export([start/1]).

start(N) ->
    Collector = collector:start(self(), N),
    [converter:start(Collector, Num) || Num <- lists:seq(1, N)],

    receive
        {Collector, UnsortedConverted} ->
            SortedNumber = lists:sort(fun compare_on_first_elem/2, UnsortedConverted),
            lists:map(fun second_elem/1, SortedNumber)
    end.

compare_on_first_elem({A, _}, {B, _}) -> A =< B.
second_elem({_, A}) -> A.

-ifdef(TEST).
-include_lib("../test/fizzbuzz.hrl").
-endif.
