-include_lib("eunit/include/eunit.hrl").

receive_one_result_when_space_is_one_test() ->
    Receiver = self(),
    Collector = collector:start(Receiver, 1),

    Collector ! {self(), {1, "1"}},
    receive
        {Collector, Ret} ->
            ?assertEqual([{1, "1"}], Ret)
    end.

receive_a_list_of_size_two_result_when_space_is_two_test() ->
    Receiver = self(),
    Collector = collector:start(Receiver, 2),

    Collector ! {self(), {1, "1"}},
    Collector ! {self(), {2, "2"}},
    receive
        {Collector, Ret} ->
            ?assertEqual([{2, "2"}, {1, "1"}], Ret)
    end.
