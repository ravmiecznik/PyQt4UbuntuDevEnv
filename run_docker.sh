#!/bin/bash
xhost +local:docker
docker-compose -f emubt-sdk.yaml up