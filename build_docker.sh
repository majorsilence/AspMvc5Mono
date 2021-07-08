#!/bin/bash
set -e # exit on first error
set -u # exit on using unset variable

DOCKER_REGISTRY=$1
echo "Using docker registry $DOCKER_REGISTRY"
echo "Building aspmvc5mono:latest"
docker build --no-cache -f ./Dockerfile -t aspmvc5mono --rm=true -m 2GB .
echo 'aspmvc5mono:latest built'

GITHASH="$(git rev-parse --short HEAD)"

#echo 'Tagging latest'
#docker tag aspmvc5mono $DOCKER_REGISTRY/aspmvc5mono:latest
#echo "Tagging $GITHASH"
#docker tag aspmvc5mono $DOCKER_REGISTRY/aspmvc5mono:$GITHASH

#echo 'Pushing'
#docker push $DOCKER_REGISTRY/aspmvc5mono:latest
#docker push $DOCKER_REGISTRY/aspmvc5mono:$GITHASH
