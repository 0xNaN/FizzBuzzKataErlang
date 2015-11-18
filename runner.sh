#! /bin/bash
erlc -DTEST src/converter.erl src/collector.erl
erl -noshell -s converter test -s collector test \
            -s init stop
