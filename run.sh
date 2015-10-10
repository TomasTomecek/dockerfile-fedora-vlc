#!/bin/bash
docker run \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=/.Xauthority \
    -v ~/.Xauthority:/.Xauthority:ro \
    --device /dev/snd \
    --device /dev/dri \
    --name vlc \
    --privileged --rm -ti \
    vlc
