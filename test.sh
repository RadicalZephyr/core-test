#!/usr/bin/env bash

eval `opam config env`

runtest() {
    ocamldebug $1 <<EOF
run
EOF

    if [[ $? != 0 ]]
    then
        echo "Testing $0 failed."
    fi
}

runtest coretest
runtest coretest2
runtest simpletest
