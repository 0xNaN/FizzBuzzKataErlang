-module(fizzbuzz).
-export([convert/1]).

convert(3) -> "Fizz";
convert(5) -> "Buzz";
convert(N) -> integer_to_list(N).

-ifdef(TEST).
-include_lib("../test/fizzbuzz.hrl").
-endif.
