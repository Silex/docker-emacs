![https://github.com/Silex/docker-emacs/actions](https://github.com/Silex/docker-emacs/actions/workflows/ci.yml/badge.svg)

# Description

Run Emacs in docker containers!

Project page: https://github.com/Silex/docker-emacs<br/>
Docker Hub: https://hub.docker.com/r/silex/emacs

Wraps [nix-emacs-ci](https://github.com/purcell/nix-emacs-ci) in docker images.

# Images

| OS                                | Tag                      | Size (MB) | Inherits from      | Contents                                                               |
|-----------------------------------|--------------------------|-----------|--------------------|------------------------------------------------------------------------|
| [debian](https://debian.org)      | $version                 | 370       |                    | Emacs & curl, gnupg, ssh, wget                                         |
| [debian](https://debian.org)      | $version-ci              | 470       | $version           | [git](https://git-scm.com) & make                                      |
| [debian](https://debian.org)      | $version-ci-cask         | 510       | $version-ci        | [Cask](https://cask.readthedocs.io) & [Python](https://www.python.org) |
| [debian](https://debian.org)      | $version-ci-eask         | 510       | $version-ci        | [Eask](https://github.com/emacs-eask/cli)                              |
| [debian](https://debian.org)      | $version-ci-eldev        | 470       | $version-ci        | [eldev](https://github.com/doublep/eldev)                              |
| [debian](https://debian.org)      | $version-ci-keg          | 470       | $version-ci        | [keg](https://github.com/conao3/keg.el)                                |
| [alpine](https://alpinelinux.org) | $version-alpine          | 240       |                    | Emacs & curl, gnupg, ssh, wget                                         |
| [alpine](https://alpinelinux.org) | $version-alpine-ci       | 250       | $version-alpine    | [git](https://git-scm.com) & make                                      |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-cask  | 300       | $version-alpine-ci | [Cask](https://cask.readthedocs.io) & [Python](https://www.python.org) |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-eask  | 300       | $version-alpine-ci | [Eask](https://github.com/emacs-eask/cli)                              |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-eldev | 250       | $version-alpine-ci | [eldev](https://github.com/doublep/eldev)                              |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-keg   | 250       | $version-alpine-ci | [keg](https://github.com/conao3/keg.el)                                |

# Tags

{{TAGS}}

# Usage

``` shell
docker run -it --rm silex/emacs
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
- Run `bin/images --generate` to spread the changes everywhere.
