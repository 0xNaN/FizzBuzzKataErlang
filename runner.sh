#! /bin/bash
erlc -DTEST src/fizzbuzz.erl
erl -noshell -s fizzbuzz test \
            -s init stop
