# Supported tags

- `24.5`, `24` [24.5/Dockerfile](https://github.com/silex/docker-emacs/blob/master/24.5/Dockerfile)
- `25.1` [25.1/Dockerfile](https://github.com/silex/docker-emacs/blob/master/25.1/Dockerfile)
- `25.2` [25.2/Dockerfile](https://github.com/silex/docker-emacs/blob/master/25.2/Dockerfile)
- `25.3`, `25`, `latest` [25.3/Dockerfile](https://github.com/silex/docker-emacs/blob/master/25.3/Dockerfile)
- `26.0` [26.0/Dockerfile](https://github.com/silex/docker-emacs/blob/master/26.0/Dockerfile)
- `master` [master/Dockerfile](https://github.com/silex/docker-emacs/blob/master/master/Dockerfile)

# Description

This repository allows you to run emacs in a docker.

# Usage

``` shell
docker run -it --rm -v /:/rootfs -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```
