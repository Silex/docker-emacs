[![pipeline status](https://gitlab.com/Silex777/docker-emacs/badges/master/pipeline.svg)](https://gitlab.com/Silex777/docker-emacs/-/commits/master)

# Description

Run Emacs in docker containers!

# Images

| OS                                | Tag                      | Size (MB) | Inherits from      | Contents                                                              |
|-----------------------------------|--------------------------|-----------|--------------------|-----------------------------------------------------------------------|
| [Ubuntu](https://ubuntu.com)      | $version                 |       450 |                    | Emacs, curl, gnupg & imagemagick                                      |
| [Ubuntu](https://ubuntu.com)      | $version-dev             |      1400 | $version           | All build dependencies & source in `/opt/emacs`                       |
| [Ubuntu](https://ubuntu.com)      | $version-ci              |       480 | $version           | [git](https://git-scm.com) & make                                     |
| [Ubuntu](https://ubuntu.com)      | $version-ci-cask         |       520 | $version-ci        | [Cask](https://caskreadthedocs.io) & [Python](https://www.python.org) |
| [Ubuntu](https://ubuntu.com)      | $version-ci-eldev        |       480 | $version-ci        | [eldev](https://github.com/doublep/eldev)                             |
| [Ubuntu](https://ubuntu.com)      | $version-ci-keg          |       480 | $version-ci        | [keg](https://github.com/conao3/kegel)                                |
| [Alpine](https://alpinelinux.org) | $version-alpine          |       220 |                    | Emacs, curl, gnupg & imagemagick                                      |
| [Alpine](https://alpinelinux.org) | $version-alpine-dev      |      1200 | $version-alpine    | All build dependencies & source in `/opt/emacs`                       |
| [Alpine](https://alpinelinux.org) | $version-alpine-ci       |       240 | $version-alpine    | [git](https://git-scm.com) & make                                     |
| [Alpine](https://alpinelinux.org) | $version-alpine-ci-cask  |       280 | $version-alpine-ci | [Cask](https://caskreadthedocs.io) & [Python](https://www.python.org) |
| [Alpine](https://alpinelinux.org) | $version-alpine-ci-eldev |       240 | $version-alpine-ci | [eldev](https://github.com/doublep/eldev)                             |
| [Alpine](https://alpinelinux.org) | $version-alpine-ci-keg   |       240 | $version-alpine-ci | [keg](https://github.com/conao3/kegel)                                |

# Tags

- [`master`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/Dockerfile)
- [`master-dev`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/dev/Dockerfile)
- [`master-ci`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/ci/Dockerfile)
- [`master-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/ci/cask/Dockerfile)
- [`master-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/ci/eldev/Dockerfile)
- [`master-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/master/ubuntu/18.04/ci/keg/Dockerfile)
- [`master-alpine`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/Dockerfile)
- [`master-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/dev/Dockerfile)
- [`master-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/ci/Dockerfile)
- [`master-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/ci/cask/Dockerfile)
- [`master-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/ci/eldev/Dockerfile)
- [`master-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/3.9/ci/keg/Dockerfile)
- [`27.1`, `27`, `latest`](https://github.com/Silex/docker-emacs/blob/master/27.1/ubuntu/18.04/Dockerfile)
- [`27.1-dev`, `27-dev`, `dev`](https://github.com/Silex/docker-emacs/blob/master/27.1/ubuntu/18.04/dev/Dockerfile)
- [`27.1-ci`, `27-ci`, `ci`](https://github.com/Silex/docker-emacs/blob/master/27.1/ubuntu/18.04/ci/Dockerfile)
- [`27.1-ci-cask`, `27-ci-cask`, `cask`](https://github.com/Silex/docker-emacs/blob/master/27.1/ubuntu/18.04/ci/cask/Dockerfile)
- [`27.1-ci-eldev`, `27-ci-eldev`, `eldev`](https://github.com/Silex/docker-emacs/blob/master/27.1/ubuntu/18.04/ci/eldev/Dockerfile)
- [`27.1-ci-keg`, `27-ci-keg`, `keg`](https://github.com/Silex/docker-emacs/blob/master/27.1/ubuntu/18.04/ci/keg/Dockerfile)
- [`27.1-alpine`, `27-alpine`, `alpine`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/3.9/Dockerfile)
- [`27.1-alpine-dev`, `27-alpine-dev`, `alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/3.9/dev/Dockerfile)
- [`27.1-alpine-ci`, `27-alpine-ci`, `alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/3.9/ci/Dockerfile)
- [`27.1-alpine-ci-cask`, `27-alpine-ci-cask`, `alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/3.9/ci/cask/Dockerfile)
- [`27.1-alpine-ci-eldev`, `27-alpine-ci-eldev`, `alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/3.9/ci/eldev/Dockerfile)
- [`27.1-alpine-ci-keg`, `27-alpine-ci-keg`, `alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/3.9/ci/keg/Dockerfile)
- [`26.3`, `26`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/Dockerfile)
- [`26.3-dev`, `26-dev`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/dev/Dockerfile)
- [`26.3-ci`, `26-ci`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/ci/Dockerfile)
- [`26.3-ci-cask`, `26-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/ci/cask/Dockerfile)
- [`26.3-ci-eldev`, `26-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/ci/eldev/Dockerfile)
- [`26.3-ci-keg`, `26-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.3/ubuntu/18.04/ci/keg/Dockerfile)
- [`26.3-alpine`, `26-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/Dockerfile)
- [`26.3-alpine-dev`, `26-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/dev/Dockerfile)
- [`26.3-alpine-ci`, `26-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/ci/Dockerfile)
- [`26.3-alpine-ci-cask`, `26-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/ci/cask/Dockerfile)
- [`26.3-alpine-ci-eldev`, `26-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/ci/eldev/Dockerfile)
- [`26.3-alpine-ci-keg`, `26-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/3.9/ci/keg/Dockerfile)
- [`26.2`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/Dockerfile)
- [`26.2-dev`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/dev/Dockerfile)
- [`26.2-ci`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/ci/Dockerfile)
- [`26.2-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/ci/cask/Dockerfile)
- [`26.2-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/ci/eldev/Dockerfile)
- [`26.2-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.2/ubuntu/18.04/ci/keg/Dockerfile)
- [`26.2-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/Dockerfile)
- [`26.2-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/dev/Dockerfile)
- [`26.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/ci/Dockerfile)
- [`26.2-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/ci/cask/Dockerfile)
- [`26.2-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/ci/eldev/Dockerfile)
- [`26.2-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/3.9/ci/keg/Dockerfile)
- [`26.1`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/Dockerfile)
- [`26.1-dev`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/dev/Dockerfile)
- [`26.1-ci`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/ci/Dockerfile)
- [`26.1-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/ci/cask/Dockerfile)
- [`26.1-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/ci/eldev/Dockerfile)
- [`26.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.1/ubuntu/18.04/ci/keg/Dockerfile)
- [`26.1-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/Dockerfile)
- [`26.1-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/dev/Dockerfile)
- [`26.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/ci/Dockerfile)
- [`26.1-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/ci/cask/Dockerfile)
- [`26.1-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/ci/eldev/Dockerfile)
- [`26.1-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/3.9/ci/keg/Dockerfile)
- [`25.3`, `25`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/Dockerfile)
- [`25.3-dev`, `25-dev`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/dev/Dockerfile)
- [`25.3-ci`, `25-ci`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/ci/Dockerfile)
- [`25.3-ci-cask`, `25-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/ci/cask/Dockerfile)
- [`25.3-ci-eldev`, `25-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/ci/eldev/Dockerfile)
- [`25.3-ci-keg`, `25-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.3/ubuntu/18.04/ci/keg/Dockerfile)
- [`25.3-alpine`, `25-alpine`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/Dockerfile)
- [`25.3-alpine-dev`, `25-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/dev/Dockerfile)
- [`25.3-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/ci/Dockerfile)
- [`25.3-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/ci/cask/Dockerfile)
- [`25.3-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/ci/eldev/Dockerfile)
- [`25.3-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/3.9/ci/keg/Dockerfile)
- [`25.2`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/Dockerfile)
- [`25.2-dev`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/dev/Dockerfile)
- [`25.2-ci`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/ci/Dockerfile)
- [`25.2-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/ci/cask/Dockerfile)
- [`25.2-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/ci/eldev/Dockerfile)
- [`25.2-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.2/ubuntu/18.04/ci/keg/Dockerfile)
- [`25.2-alpine`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/Dockerfile)
- [`25.2-alpine-dev`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/dev/Dockerfile)
- [`25.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/ci/Dockerfile)
- [`25.2-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/ci/cask/Dockerfile)
- [`25.2-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/ci/eldev/Dockerfile)
- [`25.2-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/3.9/ci/keg/Dockerfile)
- [`25.1`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/Dockerfile)
- [`25.1-dev`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/dev/Dockerfile)
- [`25.1-ci`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/ci/Dockerfile)
- [`25.1-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/ci/cask/Dockerfile)
- [`25.1-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/ci/eldev/Dockerfile)
- [`25.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.1/ubuntu/18.04/ci/keg/Dockerfile)
- [`24.5`, `24`](https://github.com/Silex/docker-emacs/blob/master/24.5/ubuntu/18.04/Dockerfile)
- [`24.5-dev`, `24-dev`](https://github.com/Silex/docker-emacs/blob/master/24.5/ubuntu/18.04/dev/Dockerfile)
- [`24.5-ci`, `24-ci`](https://github.com/Silex/docker-emacs/blob/master/24.5/ubuntu/18.04/ci/Dockerfile)
- [`24.5-ci-eldev`, `24-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/24.5/ubuntu/18.04/ci/eldev/Dockerfile)
- [`24.5-ci-keg`, `24-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.5/ubuntu/18.04/ci/keg/Dockerfile)
- [`24.4`](https://github.com/Silex/docker-emacs/blob/master/24.4/ubuntu/14.04/Dockerfile)
- [`24.4-dev`](https://github.com/Silex/docker-emacs/blob/master/24.4/ubuntu/14.04/dev/Dockerfile)
- [`24.4-ci`](https://github.com/Silex/docker-emacs/blob/master/24.4/ubuntu/14.04/ci/Dockerfile)
- [`24.4-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/24.4/ubuntu/14.04/ci/eldev/Dockerfile)
- [`24.4-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.4/ubuntu/14.04/ci/keg/Dockerfile)
- [`24.3`](https://github.com/Silex/docker-emacs/blob/master/24.3/ubuntu/14.04/Dockerfile)
- [`24.3-dev`](https://github.com/Silex/docker-emacs/blob/master/24.3/ubuntu/14.04/dev/Dockerfile)
- [`24.3-ci`](https://github.com/Silex/docker-emacs/blob/master/24.3/ubuntu/14.04/ci/Dockerfile)
- [`24.3-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.3/ubuntu/14.04/ci/keg/Dockerfile)
- [`24.2`](https://github.com/Silex/docker-emacs/blob/master/24.2/ubuntu/14.04/Dockerfile)
- [`24.2-dev`](https://github.com/Silex/docker-emacs/blob/master/24.2/ubuntu/14.04/dev/Dockerfile)
- [`24.2-ci`](https://github.com/Silex/docker-emacs/blob/master/24.2/ubuntu/14.04/ci/Dockerfile)
- [`24.2-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.2/ubuntu/14.04/ci/keg/Dockerfile)
- [`24.1`](https://github.com/Silex/docker-emacs/blob/master/24.1/ubuntu/14.04/Dockerfile)
- [`24.1-dev`](https://github.com/Silex/docker-emacs/blob/master/24.1/ubuntu/14.04/dev/Dockerfile)
- [`24.1-ci`](https://github.com/Silex/docker-emacs/blob/master/24.1/ubuntu/14.04/ci/Dockerfile)
- [`24.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.1/ubuntu/14.04/ci/keg/Dockerfile)
- [`23.4`, `23`](https://github.com/Silex/docker-emacs/blob/master/23.4/ubuntu/14.04/bootstrap/Dockerfile)
- [`23.4-dev`, `23-dev`](https://github.com/Silex/docker-emacs/blob/master/23.4/ubuntu/14.04/bootstrap/dev/Dockerfile)
- [`23.4-ci`, `23-ci`](https://github.com/Silex/docker-emacs/blob/master/23.4/ubuntu/14.04/bootstrap/ci/Dockerfile)

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
- Run `bin/generate` to spread the changes everywhere.

# Thanks

- https://www.packet.com for the ARM servers allowing multiarch images.
