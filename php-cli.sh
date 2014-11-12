#!/bin/bash

MY_PATH=$(dirname $(realpath $0))

. $MY_PATH/docker-name.conf

ARGS='-a'
if [ $# -gt 0 ]; then
    ARGS=$@
fi

docker run -ti -v $PWD:/var/www $DOCKER_IMAGE_NAME /usr/bin/php $ARGS
