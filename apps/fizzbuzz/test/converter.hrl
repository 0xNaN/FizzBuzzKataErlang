-include_lib("eunit/include/eunit.hrl").

convert_one_to_one_test() ->
    ?assertEqual("1", converter:convert(1)).

convert_two_to_two_test() ->
    ?assertEqual("2", converter:convert(2)).

convert_multiple_of_three_to_fizz_test() ->
    ?assertEqual("Fizz", converter:convert(3)),
    ?assertEqual("Fizz", converter:convert(6)),
    ?assertEqual("Fizz", converter:convert(9)),
    ?assertEqual("Fizz", converter:convert(36)).

convert_multiple_of_five_to_buzz_test() ->
    ?assertEqual("Buzz", converter:convert(5)),
    ?assertEqual("Buzz", converter:convert(10)),
    ?assertEqual("Buzz", converter:convert(50)).

convert_multiple_of_three_and_five_to_fizzbuzz_test() ->
    ?assertEqual("FizzBuzz", converter:convert(15)),
    ?assertEqual("FizzBuzz", converter:convert(225)),
    ?assertEqual("FizzBuzz", converter:convert(555)).

run_a_converter_process_and_send_result_test() ->
    Collector = self(),
    Converter = converter:start(Collector, 1),
    receive
        {Converter, {Number, Ret}} ->
            ?assertEqual(1, Number),
            ?assertEqual("1", Ret)
    end.
