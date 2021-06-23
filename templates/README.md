[![pipeline status](https://gitlab.com/Silex777/docker-emacs/badges/master/pipeline.svg)](https://gitlab.com/Silex777/docker-emacs/-/commits/master)

# Description

Run Emacs in docker containers!

# Images

| OS                                | Tag                      | Size (MB) | Inherits from      | Contents                                                              |
|-----------------------------------|--------------------------|-----------|--------------------|-----------------------------------------------------------------------|
| [debian](https://debian.org)      | $version                 |       450 |                    | Emacs, curl, gnupg & imagemagick                                      |
| [debian](https://debian.org)      | $version-dev             |      1400 | $version           | All build dependencies & source in `/opt/emacs`                       |
| [debian](https://debian.org)      | $version-ci              |       480 | $version           | [git](https://git-scm.com) & make                                     |
| [debian](https://debian.org)      | $version-ci-cask         |       520 | $version-ci        | [Cask](https://caskreadthedocs.io) & [Python](https://www.python.org) |
| [debian](https://debian.org)      | $version-ci-eldev        |       480 | $version-ci        | [eldev](https://github.com/doublep/eldev)                             |
| [debian](https://debian.org)      | $version-ci-keg          |       480 | $version-ci        | [keg](https://github.com/conao3/kegel)                                |
| [alpine](https://alpinelinux.org) | $version-alpine          |       220 |                    | Emacs, curl, gnupg & imagemagick                                      |
| [alpine](https://alpinelinux.org) | $version-alpine-dev      |      1200 | $version-alpine    | All build dependencies & source in `/opt/emacs`                       |
| [alpine](https://alpinelinux.org) | $version-alpine-ci       |       240 | $version-alpine    | [git](https://git-scm.com) & make                                     |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-cask  |       280 | $version-alpine-ci | [Cask](https://caskreadthedocs.io) & [Python](https://www.python.org) |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-eldev |       240 | $version-alpine-ci | [eldev](https://github.com/doublep/eldev)                             |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-keg   |       240 | $version-alpine-ci | [keg](https://github.com/conao3/kegel)                                |

# Tags

{{TAGS}}

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
