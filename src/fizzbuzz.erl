-module(fizzbuzz).
-export([convert/1]).

-define(FIZZ, "Fizz").
-define(BUZZ, "Buzz").

convert(N) when N rem 15 =:= 0 ->
    ?FIZZ ++ ?BUZZ;
convert(N) when N rem 3 =:= 0 ->
    ?FIZZ;
convert(N) when N rem 5 =:= 0 ->
    ?BUZZ;
convert(N) ->
    integer_to_list(N).

-ifdef(TEST).
-include_lib("../test/fizzbuzz.hrl").
-endif.
