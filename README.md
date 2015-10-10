# dockerfile-fedora-vlc

build it:

```
$ ./build.sh
```

run it:

```
$ ./run.sh
```

In case of issues, you can test if X connection works:

```
[vlc@container ~]$ xset -q
```

Also check if X unix domain socket and auth file have correct perms:

```
$ ls -lha /tmp/.X11-unix/X0 ~/.Xauthority
```

## Other Options

 * `-v /etc/localtime:/etc/localtime:ro` — use same time as on host
 * `-v /dev/shm:/dev/shm` — dbus or pulseaudio may need this
 * `-v /etc/machine-id:/etc/machine-id` — for systemd
 * `-e DBUS_SESSION_BUS_ADDRESS=/run/user/1000/dbus/user_bus_socket` — dbus is running on host
