# Supported tags

- `23.4`, `23` [Dockerfile.23](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu12.emacs23)
- `24.5`, `24` [Dockerfile.24](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)
- `25.1`, `25.2`, `25.3`, `25`, `latest` [Dockerfile.25](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)
- `26.0` [Dockerfile.26](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)
- `master` [Dockerfile.master](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)

# Description

This repository allows you to run emacs in a docker.

# Usage

``` shell
docker run -it --rm -v /:/rootfs -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```
