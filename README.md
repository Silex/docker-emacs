# Supported tags

- `24.3` [24.3/Dockerfile](https://github.com/silex/docker-emacs/blob/master/24.3/Dockerfile)
- `24.4` [24.4/Dockerfile](https://github.com/silex/docker-emacs/blob/master/24.4/Dockerfile)
- `24.5` [24.5/Dockerfile](https://github.com/silex/docker-emacs/blob/master/24.5/Dockerfile)
- `25.1`, `latest` [25.1/Dockerfile](https://github.com/silex/docker-emacs/blob/master/25.1/Dockerfile)
- `25.2-rc2`[25.1-rc2/Dockerfile](https://github.com/silex/docker-emacs/blob/master/25.2-rc2/Dockerfile)
- `master` [master/Dockerfile](https://github.com/silex/docker-emacs/blob/master/master/Dockerfile)

# Description

This repository allows you to run emacs in a docker.

# Usage

``` shell
docker run -it --rm -v /:/rootfs -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```
