-module(converter).
-export([convert/1, convert/2, start/2]).

-define(FIZZ, "Fizz").
-define(BUZZ, "Buzz").

start(Collector, Number) ->
    spawn(converter, convert, [Collector, Number]).

convert(Collector, Number) ->
    Collector ! {self(), {Number, convert(Number)}}.
convert(N) when N rem 15 =:= 0 ->
    ?FIZZ ++ ?BUZZ;
convert(N) when N rem 3 =:= 0 ->
    ?FIZZ;
convert(N) when N rem 5 =:= 0 ->
    ?BUZZ;
convert(N) ->
    integer_to_list(N).

-ifdef(TEST).
-include_lib("../test/converter.hrl").
-endif.
