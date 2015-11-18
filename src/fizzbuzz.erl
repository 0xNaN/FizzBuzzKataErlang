-module(fizzbuzz).
-export([start/1]).

start(N) ->
    Collector = collector:start(self(), N),
    [converter:start(Collector, Num) || Num <- lists:seq(1, N)],

    receive
        {Collector, UnsortedConverted} -> sort(UnsortedConverted)
    end.

sort(UnsortedConverted) ->
    SortedNumber = lists:sort(fun compare_on_first_elem/2, UnsortedConverted),
    lists:map(fun({_, A}) -> A end, SortedNumber).

compare_on_first_elem({A, _}, {B, _}) -> A =< B.

-ifdef(TEST).
-include_lib("../test/fizzbuzz.hrl").
-endif.
