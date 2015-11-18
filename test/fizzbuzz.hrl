-include_lib("eunit/include/eunit.hrl").

convert_one_to_one_test() ->
    ?assertEqual("1", fizzbuzz:convert(1)).

convert_two_to_two_test() ->
    ?assertEqual("2", fizzbuzz:convert(2)).

convert_three_to_fizz_test() ->
    ?assertEqual("Fizz", fizzbuzz:convert(3)).

convert_five_to_buzz_test() ->
    ?assertEqual("Buzz", fizzbuzz:convert(5)).

