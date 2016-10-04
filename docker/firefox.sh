#!/bin/sh

docker run -ti --rm \
       --net docker_dev \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       nirped/firefox
