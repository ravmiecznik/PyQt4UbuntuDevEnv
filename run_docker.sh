#!/bin/bash
xhost +local:docker

#docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /etc/machine-id:/etc/machine-id -v ./shared:/home/root --device /dev/snd ubuntu:emubt bash
docker-compose -f emubt-sdk.yaml up