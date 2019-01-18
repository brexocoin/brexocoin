#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-brexocoinpay/brexocoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/brexocoind docker/bin/
cp $BUILD_DIR/src/brexocoin-cli docker/bin/
cp $BUILD_DIR/src/brexocoin-tx docker/bin/
strip docker/bin/brexocoind
strip docker/bin/brexocoin-cli
strip docker/bin/brexocoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
