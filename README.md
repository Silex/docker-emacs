[![pipeline status](https://gitlab.com/Silex777/docker-emacs/badges/master/pipeline.svg)](https://gitlab.com/Silex777/docker-emacs/-/commits/master)

# Description

Run Emacs in docker containers!

This project provides different docker images:

- The main images (~500MB) only contain the runtime dependencies for Emacs to run.
- The `-dev` variants (~1400MB) also contain the build dependencies, the Emacs source (in `/opt/emacs`), and additional
  tools such as [Cask](https://cask.readthedocs.io), [git](https://git-scm.com) and [Python](https://www.python.org).
- The `-alpine` variants (~200MB) follow the same logic as the main images but are based on
  [Alpine Linux](https://alpinelinux.org).

# Tags

- [`master`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/Dockerfile)
- [`master-dev`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/dev/Dockerfile)
- [`master-alpine`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/Dockerfile)
- [`master-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/dev/Dockerfile)
- [`27.0`, `27`](https://github.com/Silex/docker-emacs/blob/master/27.0/ubuntu/18.04/Dockerfile)
- [`27.0-dev`, `27-dev`](https://github.com/Silex/docker-emacs/blob/master/27.0/ubuntu/18.04/dev/Dockerfile)
- [`27.0-alpine`, `27-alpine`](https://github.com/Silex/docker-emacs/blob/master/27.0/alpine/3.9/Dockerfile)
- [`27.0-alpine-dev`, `27-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/27.0/alpine/3.9/dev/Dockerfile)
- [`26.3`, `26`, `latest`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/Dockerfile)
- [`26.3-dev`, `26-dev`, `dev`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/dev/Dockerfile)
- [`26.3-alpine`, `26-alpine`, `alpine`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/Dockerfile)
- [`26.3-alpine-dev`, `26-alpine-dev`, `alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/dev/Dockerfile)
- [`26.2`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/Dockerfile)
- [`26.2-dev`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/dev/Dockerfile)
- [`26.2-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/Dockerfile)
- [`26.2-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/dev/Dockerfile)
- [`26.1`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/Dockerfile)
- [`26.1-dev`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/dev/Dockerfile)
- [`26.1-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/Dockerfile)
- [`26.1-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/dev/Dockerfile)
- [`25.3`, `25`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/Dockerfile)
- [`25.3-dev`, `25-dev`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/dev/Dockerfile)
- [`25.3-alpine`, `25-alpine`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/Dockerfile)
- [`25.3-alpine-dev`, `25-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/dev/Dockerfile)
- [`25.2`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/Dockerfile)
- [`25.2-dev`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/dev/Dockerfile)
- [`25.2-alpine`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/Dockerfile)
- [`25.2-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/dev/Dockerfile)
- [`25.1`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/Dockerfile)
- [`25.1-dev`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/dev/Dockerfile)
- [`24.5`, `24`](https://github.com/Silex/docker-emacs/blob/master/24.5/ubuntu/18.04/Dockerfile)
- [`24.5-dev`, `24-dev`](https://github.com/Silex/docker-emacs/blob/master/24.5/ubuntu/18.04/dev/Dockerfile)
- [`24.4`](https://github.com/Silex/docker-emacs/blob/master/24.4/ubuntu/14.04/Dockerfile)
- [`24.4-dev`](https://github.com/Silex/docker-emacs/blob/master/24.4/ubuntu/14.04/dev/Dockerfile)
- [`24.3`](https://github.com/Silex/docker-emacs/blob/master/24.3/ubuntu/14.04/Dockerfile)
- [`24.3-dev`](https://github.com/Silex/docker-emacs/blob/master/24.3/ubuntu/14.04/dev/Dockerfile)
- [`24.2`](https://github.com/Silex/docker-emacs/blob/master/24.2/ubuntu/14.04/Dockerfile)
- [`24.2-dev`](https://github.com/Silex/docker-emacs/blob/master/24.2/ubuntu/14.04/dev/Dockerfile)
- [`24.1`](https://github.com/Silex/docker-emacs/blob/master/24.1/ubuntu/14.04/Dockerfile)
- [`24.1-dev`](https://github.com/Silex/docker-emacs/blob/master/24.1/ubuntu/14.04/dev/Dockerfile)
- [`23.4`, `23`](https://github.com/Silex/docker-emacs/blob/master/23.4/ubuntu/14.04/bootstrap/Dockerfile)
- [`23.4-dev`, `23-dev`](https://github.com/Silex/docker-emacs/blob/master/23.4/ubuntu/14.04/bootstrap/dev/Dockerfile)

# Usage

## Console

``` shell
docker run -it --rm silex/emacs
```

## GUI

``` shell
xhost +local:root # WARN: this comes with security issues
docker run -it --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```

# Alternatives

- [flycheck/emacs-cask](https://hub.docker.com/r/flycheck/emacs-cask): collection of docker images containing a
  minimal Emacs compiled from source with Cask.
- [flycheck/emacs-travis](https://github.com/flycheck/emacs-travis): makefile which provides targets to
  install Emacs stable and emacs-snapshot, Texinfo and Cask.
- [jgkamat/airy-docker-emacs](https://github.com/jgkamat/airy-docker-emacs): alpine-based docker images that have
  Emacs installed through the package manager.
- [JAremko/docker-emacs](https://github.com/JAremko/docker-emacs): collection of docker images with focus on GUI usage.
- [rejeep/evm](https://github.com/rejeep/evm): pre-built Emacs binaries.

# Contributions

They are very welcome! The basic workflow is as follow:

- Modify `images.yml`.
- Modify files inside the `/templates` directory.
- Run `bin/images generate` to spread the changes everywhere.
