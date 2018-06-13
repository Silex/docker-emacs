# Description

Run Emacs in a docker!

This project provides different docker images:

- The main images (~450MB) only contain the runtime dependencies for Emacs to run.
- The `-dev` variants (~1200MB) contain additional developer tools such as [Cask](https://cask.readthedocs.io), [git](https://git-scm.com) or [Python](https://www.python.org).
  The Emacs source is also available at `/opt/emacs` if you need to build Emacs differently.
- The `-alpine` variants (~200MB) follow the same logic as the main images but are based on [Alpine Linux](https://alpinelinux.org).

## Tags

- `master` [(master/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/ubuntu/18.04/Dockerfile)
- `master-dev` [(master/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/ubuntu/18.04/Dockerfile)
- `master-alpine` [(master/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/alpine/Dockerfile)
- `master-alpine-dev` [(master/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/alpine/Dockerfile)
- `26.1`, `26`, `latest` [(26.1/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.1/ubuntu/18.04/Dockerfile)
- `26.1-dev`, `26-dev`, `dev` [(26.1/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.1/ubuntu/18.04/Dockerfile)
- `26.1-alpine`, `26-alpine`, `alpine` [(26.1/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.1/alpine/Dockerfile)
- `26.1-alpine-dev`, `26-alpine-dev` [(26.1/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.1/alpine/Dockerfile)
- `25.3`, `25` [(25.3/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/ubuntu/18.04/Dockerfile)
- `25.3-dev`, `25-dev` [(25.3/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/ubuntu/18.04/Dockerfile)
- `25.3-alpine`, `25-alpine` [(25.3/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/alpine/Dockerfile)
- `25.3-alpine-dev`, `25-alpine-dev`, `alpine-dev` [(25.3/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/alpine/Dockerfile)
- `25.2` [(25.2/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/ubuntu/18.04/Dockerfile)
- `25.2-dev` [(25.2/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/ubuntu/18.04/Dockerfile)
- `25.2-alpine` [(25.2/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/alpine/Dockerfile)
- `25.2-alpine-dev` [(25.2/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/alpine/Dockerfile)
- `25.1` [(25.1/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.1/ubuntu/18.04/Dockerfile)
- `25.1-dev` [(25.1/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.1/ubuntu/18.04/Dockerfile)
- `24.5`, `24` [(24.5/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.5/ubuntu/18.04/Dockerfile)
- `24.5-dev`, `24-dev` [(24.5/ubuntu/18.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.5/ubuntu/18.04/Dockerfile)
- `24.4` [(24.4/ubuntu/12.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.4/ubuntu/12.04/Dockerfile)
- `24.4-dev` [(24.4/ubuntu/12.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.4/ubuntu/12.04/Dockerfile)
- `24.3` [(24.3/ubuntu/12.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.3/ubuntu/12.04/Dockerfile)
- `24.3-dev` [(24.3/ubuntu/12.04/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.3/ubuntu/12.04/Dockerfile)
- `23.4`, `23` [(23.4/ubuntu/12.04/bootstrap/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/23.4/ubuntu/12.04/bootstrap/Dockerfile)
- `23.4-dev`, `23-dev` [(23.4/ubuntu/12.04/bootstrap/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/23.4/ubuntu/12.04/bootstrap/Dockerfile)

## Usage

### Console

``` shell
docker run -it --rm silex/emacs
```

### GUI

``` shell
xhost +local # WARN: this comes with security issues
docker run -it --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```

## Contributions

Yes please! You should mostly do your modifications to `images.yml` or inside the `/templates` directory,
then run `bin/images generate` to apply the changes.
