#!/bin/bash

#
# usage:
#       ./run.sh [container_name] [port] [video path]
# ex:
#   ./run.sh motion0 8081 /dev/video0
#   ./run.sh motion1 8082 /dev/video1
#


CONTAINER_NAME=$1
OUT_PORT=$2
VIDEO_PATH=$3

docker run -ti --rm \
    --name $CONTAINER_NAME \
    --publish $OUT_PORT:8081 \
    --device $VIDEO_PATH:/dev/video0 `# for webcam` \
    allenyllee/motion-webcam-server \
    motion