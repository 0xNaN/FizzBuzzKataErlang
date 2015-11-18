-include_lib("eunit/include/eunit.hrl").

convert_one_to_one_test() ->
    ?assertEqual("1", fizzbuzz:convert(1)).
