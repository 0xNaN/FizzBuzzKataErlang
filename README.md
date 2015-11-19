FizzBuzz Erlang
==================

My solution to FizzBuzzKata with Erlang on cowboy.
Run `fizzbuzz` and go to `localhost:8080/15`

Build
-----

    $ rebar3 compile
    $ rebar3 release
    $ ./_build/default/rel/fizzbuzz/bin/fizzbuzz start
    $ ./_build/default/rel/fizzbuzz/bin/fizzbuzz stop
