#!/bin/bash

CONTAINER_NAME=openfortivpn
IMAGE_NAME=adiprint/openfortivpn:latest

HOST_CONF_FILE=$(pwd)/vpn.conf

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

docker run \
    -dit \
    --name $CONTAINER_NAME \
    --privileged \
    --network=host \
    -v $HOST_CONF_FILE:/vpn.conf \
    $IMAGE_NAME
