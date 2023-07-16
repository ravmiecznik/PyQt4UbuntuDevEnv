#!/bin/bash
xhost +local:docker
docker-compose -f pyqt4-dev-env.yaml up