-module(fizzbuzz).
-export([convert/1]).

convert(5) -> "Buzz";
convert(N) when N rem 3 =:= 0 -> "Fizz";
convert(N) when N rem 5 =:= 0 -> "Buzz";
convert(N) -> integer_to_list(N).

-ifdef(TEST).
-include_lib("../test/fizzbuzz.hrl").
-endif.
