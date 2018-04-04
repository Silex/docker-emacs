# Description

Run Emacs in a docker!

# Tags

- `master` [(master/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/xenial/Dockerfile)
- `master-dev` [(master/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/xenial/dev/Dockerfile)
- `master-alpine` [(master/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/alpine/Dockerfile)
- `26.0`, `26` [(26.0/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.0/xenial/Dockerfile)
- `26.0-dev`, `26-dev` [(26.0/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.0/xenial/dev/Dockerfile)
- `26.0-alpine`, `26-alpine` [(26.0/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.0/alpine/Dockerfile)
- `25.3`, `25`, `latest` [(25.3/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/xenial/Dockerfile)
- `25.3-dev`, `25-dev`, `dev` [(25.3/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/xenial/dev/Dockerfile)
- `25.3-alpine`, `25-alpine`, `alpine` [(25.3/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/alpine/Dockerfile)
- `25.2` [(25.2/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/xenial/Dockerfile)
- `25.2-dev` [(25.2/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/xenial/dev/Dockerfile)
- `25.2-alpine` [(25.2/alpine/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/alpine/Dockerfile)
- `25.1` [(25.1/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.1/xenial/Dockerfile)
- `25.1-dev` [(25.1/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.1/xenial/dev/Dockerfile)
- `24.5`, `24` [(24.5/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.5/xenial/Dockerfile)
- `24.5-dev`, `24-dev` [(24.5/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.5/xenial/dev/Dockerfile)
- `24.4` [(24.4/precise/autogen/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.4/precise/autogen/Dockerfile)
- `24.4-dev` [(24.4/precise/autogen/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.4/precise/autogen/dev/Dockerfile)
- `24.3` [(24.3/precise/autogen/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.3/precise/autogen/Dockerfile)
- `24.3-dev` [(24.3/precise/autogen/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.3/precise/autogen/dev/Dockerfile)
- `23.4`, `23` [(23.4/precise/bootstrap/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/23.4/precise/bootstrap/Dockerfile)
- `23.4-dev`, `23-dev` [(23.4/precise/bootstrap/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/23.4/precise/bootstrap/dev/Dockerfile)

This project offers many different docker images. The variants *-dev*
and *-alpine* can be described as follows:

- *-dev* images contain additional developer tools such as [Cask](https://cask.readthedocs.io), [git](https://git-scm.com/), [curl](https://curl.haxx.se/) and [Python](https://www.python.org/);
- *-alpine* images are based on [Alpine Linux](https://alpinelinux.org/) and should be relatively small.

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
