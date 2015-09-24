#!/bin/bash

MY_PATH=$(dirname $(realpath $0))

NAME='fferriere/phpcli'
if [ -n "$FFERRIERE_PHPCLI_IMAGE" ]; then
    NAME=$FFERRIERE_PHPCLI_IMAGE
fi

docker build -t $NAME $@ $MY_PATH/.
