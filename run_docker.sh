#!/bin/bash
xhost +local:docker
docker-compose -f py1t4-dev-env.yaml up