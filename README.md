# Description

Run Emacs in a docker!

# Tags

- `master` [(master/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/xenial/Dockerfile)
- `master-dev` [(master/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/master/xenial/dev/Dockerfile)
- `26.0`, `26` [(26.0/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.0/xenial/Dockerfile)
- `26.0-dev`, `26-dev` [(26.0/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/26.0/xenial/dev/Dockerfile)
- `25.3`, `25`, `latest` [(25.3/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/xenial/Dockerfile)
- `25.3-dev`, `25-dev`, `dev` [(25.3/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.3/xenial/dev/Dockerfile)
- `25.2` [(25.2/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/xenial/Dockerfile)
- `25.2-dev` [(25.2/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.2/xenial/dev/Dockerfile)
- `25.1` [(25.1/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.1/xenial/Dockerfile)
- `25.1-dev` [(25.1/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/25.1/xenial/dev/Dockerfile)
- `24.5`, `24` [(24.5/xenial/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.5/xenial/Dockerfile)
- `24.5-dev`, `24-dev` [(24.5/xenial/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/24.5/xenial/dev/Dockerfile)
- `23.4`, `23` [(23.4/precise/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/23.4/precise/Dockerfile)
- `23.4-dev`, `23-dev` [(23.4/precise/dev/Dockerfile)](https://github.com/silex/docker-emacs/blob/master/23.4/precise/dev/Dockerfile)

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
