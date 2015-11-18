-module(fizzbuzz).
-export([convert/1]).

convert(1) -> "1".

-ifdef(TEST).
-include_lib("../test/fizzbuzz.hrl").
-endif.
