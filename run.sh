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
    --privileged --rm -ti\
    vlc bash

#    -v /etc/localtime:/etc/localtime:ro \
#    -v /run:/run \
#    -v /dev/shm:/dev/shm \
#    -v /etc/machine-id:/etc/machine-id \
#    -e DBUS_SESSION_BUS_ADDRESS=/run/user/1000/dbus/user_bus_socket \
