-include_lib("eunit/include/eunit.hrl").

return_a_list_of_converted_number_test() ->
    ?assertEqual(["1", "2", "Fizz"], fizzbuzz:start(3)).

