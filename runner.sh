#! /bin/bash
erlc -DTEST src/converter.erl
erl -noshell -s converter test \
            -s init stop
