# Supported tags

- `23.4`, `23` [(23/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu12.emacs23)
- `24.5`, `24` [(24/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)
- `25.1`, `25.2`, `25.3`, `25`, `latest` [(25/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)
- `26.0` [(26/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)
- `master` [(master/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/dockerfiles/Dockerfile.ubuntu16.emacs24+)

# Description

This repository allows you to run emacs in a docker.

# Usage

``` shell
docker run -it --rm -v /:/rootfs -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```
