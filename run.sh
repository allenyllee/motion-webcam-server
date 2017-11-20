#!/bin/bash

# shell - Process all arguments except the first one (in a bash script) - Stack Overflow
# https://stackoverflow.com/questions/9057387/process-all-arguments-except-the-first-one-in-a-bash-script

# docker run $1 ${@:2}

docker run -ti --rm \
    --name motion \
    --publish 8081:8081 \
    --device /dev/video0:/dev/video0 `# for webcam` \
    --device /dev/video1:/dev/video1 `# for webcam` \
    allenyllee/motion-webcam-server