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
