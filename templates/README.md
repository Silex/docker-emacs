# Description

Run Emacs in a docker!

This project provides different docker images. The variants can be described as follow:

- `-dev` images contain additional developer tools such as
  [Cask](https://cask.readthedocs.io), [git](https://git-scm.com),
  [curl](https://curl.haxx.se) and [Python](https://www.python.org).
  The Emacs source is also available at `/opt/emacs` if you need to build Emacs differently.
- `-alpine` images are based on [Alpine Linux](https://alpinelinux.org/) and are the smallest in size.

# Tags

{{TAGS}}

# Usage

## Console

``` shell
docker run -it --rm silex/emacs
```

## GUI

``` shell
xhost + # WARN: this comes with security issues
docker run -it --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```

# Contributions

They are welcome! You should do the modifications in the `/templates` directory,
then run `bin/update` to apply the changes.
