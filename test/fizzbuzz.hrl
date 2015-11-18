-include_lib("eunit/include/eunit.hrl").

convert_one_to_one_test() ->
    ?assertEqual("1", fizzbuzz:convert(1)).

convert_two_to_two_test() ->
    ?assertEqual("2", fizzbuzz:convert(2)).

convert_multiple_of_three_to_fizz_test() ->
    ?assertEqual("Fizz", fizzbuzz:convert(3)),
    ?assertEqual("Fizz", fizzbuzz:convert(6)),
    ?assertEqual("Fizz", fizzbuzz:convert(9)),
    ?assertEqual("Fizz", fizzbuzz:convert(36)).

convert_multiple_of_five_to_buzz_test() ->
    ?assertEqual("Buzz", fizzbuzz:convert(5)),
    ?assertEqual("Buzz", fizzbuzz:convert(10)),
    ?assertEqual("Buzz", fizzbuzz:convert(50)).

convert_multiple_of_three_and_five_to_fizzbuzz_test() ->
    ?assertEqual("FizzBuzz", fizzbuzz:convert(15)),
    ?assertEqual("FizzBuzz", fizzbuzz:convert(225)),
    ?assertEqual("FizzBuzz", fizzbuzz:convert(555)).
