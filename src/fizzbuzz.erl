-module(fizzbuzz).
-export([convert/1]).

convert(1) -> "1";
convert(2) -> "2".

-ifdef(TEST).
-include_lib("../test/fizzbuzz.hrl").
-endif.
