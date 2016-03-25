#!/bin/bash

THIS_PATH=$(dirname $(realpath $0))

IMAGE='fferriere/php7-cli'
if [ -n "$FFERRIERE_PHP7_CLI" ]; then
    IMAGE="$FFERRIERE_PHP7_CLI"
fi

docker build -t $IMAGE $@ $THIS_PATH/.
