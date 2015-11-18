-include_lib("eunit/include/eunit.hrl").

receive_one_result_when_space_is_one_test() ->
    Receiver = self(),
    Collector = collector:start(Receiver, 1),

    Collector ! {self(), {1, "1"}},
    receive
        {Collector, Ret} ->
            ?assertEqual([{1, "1"}], Ret)
    end.
