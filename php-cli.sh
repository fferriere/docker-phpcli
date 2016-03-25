#!/bin/bash

IMAGE='fferriere/php7-cli'
if [ -n "$FFERRIERE_PHP7_CLI" ]; then
    IMAGE="$FFERRIERE_PHP7_CLI"
fi

ARGS='-a'
if [ $# -gt 0 ]; then
    ARGS=$@
fi

docker run --rm -ti -v $PWD:/var/www $IMAGE /usr/bin/php $ARGS
