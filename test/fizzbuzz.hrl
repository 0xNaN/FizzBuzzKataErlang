-include_lib("eunit/include/eunit.hrl").

convert_one_to_one_test() ->
    ?assertEqual("1", fizzbuzz:convert(1)).

convert_two_to_two_test() ->
    ?assertEqual("2", fizzbuzz:convert(2)).
