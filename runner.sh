#! /bin/bash
erlc -DTEST src/converter.erl src/collector.erl src/fizzbuzz.erl
erl -noshell -s converter test -s collector test -s fizzbuzz test \
            -s init stop
