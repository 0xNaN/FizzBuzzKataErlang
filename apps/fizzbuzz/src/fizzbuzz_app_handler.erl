-module(fizzbuzz_app_handler).
-export([ init/3,
          handle/2,
          terminate/3
        ]).

init(_Transport, Req, []) ->
    {ok, Req, undefined}.

handle(Req, State) ->
    {Method, Req2} = cowboy_req:method(Req),
    {ok, Req3} = handle_request(Method, Req2),
    {ok, Req3, State}.

terminate(_Reason, _Req, _State) ->
    ok.

handle_request(<<"GET">>, Req) ->
    {RawNumber, Req1} = cowboy_req:binding(number, Req),
    {ok, FizzBuzzResult} = make_fizzbuzz_result(RawNumber),
    {ok, Req3} = cowboy_req:reply(200, [
                                        {<<"content-type">>, <<"application/json">>}
                                       ], FizzBuzzResult, Req1),
    {ok, Req3}.

make_fizzbuzz_result(RawNumber) ->
    Number = binary_to_integer(RawNumber),
    FizzBuzzList = fizzbuzz:start(Number),
    FizzBuzzEncoded = jsx:encode(lists:map(fun list_to_atom /1, FizzBuzzList)),
    {ok, jsx:prettify(FizzBuzzEncoded)}.
