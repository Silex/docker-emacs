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

- [`master-debian`, `master`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`master-debian-ci`, `master-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`master-debian-ci-cask`, `master-ci-cask`, `master-debian-cask`, `master-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`master-debian-ci-eask`, `master-ci-eask`, `master-debian-eask`, `master-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`master-debian-ci-eldev`, `master-ci-eldev`, `master-debian-eldev`, `master-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`master-debian-ci-keg`, `master-ci-keg`, `master-debian-keg`, `master-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`master-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`master-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`master-alpine-ci-cask`, `master-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`master-alpine-ci-eask`, `master-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`master-alpine-ci-eldev`, `master-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`master-alpine-ci-keg`, `master-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.2-debian`, `30.2`, `30-debian`, `30`, `latest`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.2-debian-ci`, `30.2-ci`, `30-debian-ci`, `30-ci`, `ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.2-debian-ci-cask`, `30.2-ci-cask`, `30-debian-ci-cask`, `30-ci-cask`, `ci-cask`, `30.2-debian-cask`, `30.2-cask`, `30-debian-cask`, `30-cask`, `cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.2-debian-ci-eask`, `30.2-ci-eask`, `30-debian-ci-eask`, `30-ci-eask`, `ci-eask`, `30.2-debian-eask`, `30.2-eask`, `30-debian-eask`, `30-eask`, `eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.2-debian-ci-eldev`, `30.2-ci-eldev`, `30-debian-ci-eldev`, `30-ci-eldev`, `ci-eldev`, `30.2-debian-eldev`, `30.2-eldev`, `30-debian-eldev`, `30-eldev`, `eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.2-debian-ci-keg`, `30.2-ci-keg`, `30-debian-ci-keg`, `30-ci-keg`, `ci-keg`, `30.2-debian-keg`, `30.2-keg`, `30-debian-keg`, `30-keg`, `keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.2-alpine`, `30-alpine`, `alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.2-alpine-ci`, `30-alpine-ci`, `alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.2-alpine-ci-cask`, `30-alpine-ci-cask`, `alpine-ci-cask`, `30.2-alpine-cask`, `30-alpine-cask`, `alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.2-alpine-ci-eask`, `30-alpine-ci-eask`, `alpine-ci-eask`, `30.2-alpine-eask`, `30-alpine-eask`, `alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.2-alpine-ci-eldev`, `30-alpine-ci-eldev`, `alpine-ci-eldev`, `30.2-alpine-eldev`, `30-alpine-eldev`, `alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.2-alpine-ci-keg`, `30-alpine-ci-keg`, `alpine-ci-keg`, `30.2-alpine-keg`, `30-alpine-keg`, `alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.1-debian`, `30.1`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.1-debian-ci`, `30.1-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.1-debian-ci-cask`, `30.1-ci-cask`, `30.1-debian-cask`, `30.1-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.1-debian-ci-eask`, `30.1-ci-eask`, `30.1-debian-eask`, `30.1-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.1-debian-ci-eldev`, `30.1-ci-eldev`, `30.1-debian-eldev`, `30.1-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.1-debian-ci-keg`, `30.1-ci-keg`, `30.1-debian-keg`, `30.1-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`30.1-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.1-alpine-ci-cask`, `30.1-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.1-alpine-ci-eask`, `30.1-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.1-alpine-ci-eldev`, `30.1-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`30.1-alpine-ci-keg`, `30.1-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.4-debian`, `29.4`, `29-debian`, `29`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.4-debian-ci`, `29.4-ci`, `29-debian-ci`, `29-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.4-debian-ci-cask`, `29.4-ci-cask`, `29-debian-ci-cask`, `29-ci-cask`, `29.4-debian-cask`, `29.4-cask`, `29-debian-cask`, `29-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.4-debian-ci-eask`, `29.4-ci-eask`, `29-debian-ci-eask`, `29-ci-eask`, `29.4-debian-eask`, `29.4-eask`, `29-debian-eask`, `29-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.4-debian-ci-eldev`, `29.4-ci-eldev`, `29-debian-ci-eldev`, `29-ci-eldev`, `29.4-debian-eldev`, `29.4-eldev`, `29-debian-eldev`, `29-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.4-debian-ci-keg`, `29.4-ci-keg`, `29-debian-ci-keg`, `29-ci-keg`, `29.4-debian-keg`, `29.4-keg`, `29-debian-keg`, `29-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.4-alpine`, `29-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.4-alpine-ci`, `29-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.4-alpine-ci-cask`, `29-alpine-ci-cask`, `29.4-alpine-cask`, `29-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.4-alpine-ci-eask`, `29-alpine-ci-eask`, `29.4-alpine-eask`, `29-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.4-alpine-ci-eldev`, `29-alpine-ci-eldev`, `29.4-alpine-eldev`, `29-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.4-alpine-ci-keg`, `29-alpine-ci-keg`, `29.4-alpine-keg`, `29-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.3-debian`, `29.3`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.3-debian-ci`, `29.3-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.3-debian-ci-cask`, `29.3-ci-cask`, `29.3-debian-cask`, `29.3-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.3-debian-ci-eask`, `29.3-ci-eask`, `29.3-debian-eask`, `29.3-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.3-debian-ci-eldev`, `29.3-ci-eldev`, `29.3-debian-eldev`, `29.3-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.3-debian-ci-keg`, `29.3-ci-keg`, `29.3-debian-keg`, `29.3-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.3-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.3-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.3-alpine-ci-cask`, `29.3-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.3-alpine-ci-eask`, `29.3-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.3-alpine-ci-eldev`, `29.3-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.3-alpine-ci-keg`, `29.3-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.2-debian`, `29.2`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.2-debian-ci`, `29.2-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.2-debian-ci-cask`, `29.2-ci-cask`, `29.2-debian-cask`, `29.2-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.2-debian-ci-eask`, `29.2-ci-eask`, `29.2-debian-eask`, `29.2-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.2-debian-ci-eldev`, `29.2-ci-eldev`, `29.2-debian-eldev`, `29.2-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.2-debian-ci-keg`, `29.2-ci-keg`, `29.2-debian-keg`, `29.2-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.2-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.2-alpine-ci-cask`, `29.2-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.2-alpine-ci-eask`, `29.2-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.2-alpine-ci-eldev`, `29.2-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.2-alpine-ci-keg`, `29.2-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.1-debian`, `29.1`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.1-debian-ci`, `29.1-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.1-debian-ci-cask`, `29.1-ci-cask`, `29.1-debian-cask`, `29.1-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.1-debian-ci-eask`, `29.1-ci-eask`, `29.1-debian-eask`, `29.1-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.1-debian-ci-eldev`, `29.1-ci-eldev`, `29.1-debian-eldev`, `29.1-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.1-debian-ci-keg`, `29.1-ci-keg`, `29.1-debian-keg`, `29.1-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`29.1-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.1-alpine-ci-cask`, `29.1-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.1-alpine-ci-eask`, `29.1-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.1-alpine-ci-eldev`, `29.1-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`29.1-alpine-ci-keg`, `29.1-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.2-debian`, `28.2`, `28-debian`, `28`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.2-debian-ci`, `28.2-ci`, `28-debian-ci`, `28-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.2-debian-ci-cask`, `28.2-ci-cask`, `28-debian-ci-cask`, `28-ci-cask`, `28.2-debian-cask`, `28.2-cask`, `28-debian-cask`, `28-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.2-debian-ci-eask`, `28.2-ci-eask`, `28-debian-ci-eask`, `28-ci-eask`, `28.2-debian-eask`, `28.2-eask`, `28-debian-eask`, `28-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.2-debian-ci-eldev`, `28.2-ci-eldev`, `28-debian-ci-eldev`, `28-ci-eldev`, `28.2-debian-eldev`, `28.2-eldev`, `28-debian-eldev`, `28-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.2-debian-ci-keg`, `28.2-ci-keg`, `28-debian-ci-keg`, `28-ci-keg`, `28.2-debian-keg`, `28.2-keg`, `28-debian-keg`, `28-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.2-alpine`, `28-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.2-alpine-ci`, `28-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.2-alpine-ci-cask`, `28-alpine-ci-cask`, `28.2-alpine-cask`, `28-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.2-alpine-ci-eask`, `28-alpine-ci-eask`, `28.2-alpine-eask`, `28-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.2-alpine-ci-eldev`, `28-alpine-ci-eldev`, `28.2-alpine-eldev`, `28-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.2-alpine-ci-keg`, `28-alpine-ci-keg`, `28.2-alpine-keg`, `28-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.1-debian`, `28.1`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.1-debian-ci`, `28.1-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.1-debian-ci-cask`, `28.1-ci-cask`, `28.1-debian-cask`, `28.1-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.1-debian-ci-eask`, `28.1-ci-eask`, `28.1-debian-eask`, `28.1-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.1-debian-ci-eldev`, `28.1-ci-eldev`, `28.1-debian-eldev`, `28.1-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.1-debian-ci-keg`, `28.1-ci-keg`, `28.1-debian-keg`, `28.1-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`28.1-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.1-alpine-ci-cask`, `28.1-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.1-alpine-ci-eask`, `28.1-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.1-alpine-ci-eldev`, `28.1-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`28.1-alpine-ci-keg`, `28.1-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.2-debian`, `27.2`, `27-debian`, `27`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.2-debian-ci`, `27.2-ci`, `27-debian-ci`, `27-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.2-debian-ci-cask`, `27.2-ci-cask`, `27-debian-ci-cask`, `27-ci-cask`, `27.2-debian-cask`, `27.2-cask`, `27-debian-cask`, `27-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.2-debian-ci-eask`, `27.2-ci-eask`, `27-debian-ci-eask`, `27-ci-eask`, `27.2-debian-eask`, `27.2-eask`, `27-debian-eask`, `27-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.2-debian-ci-eldev`, `27.2-ci-eldev`, `27-debian-ci-eldev`, `27-ci-eldev`, `27.2-debian-eldev`, `27.2-eldev`, `27-debian-eldev`, `27-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.2-debian-ci-keg`, `27.2-ci-keg`, `27-debian-ci-keg`, `27-ci-keg`, `27.2-debian-keg`, `27.2-keg`, `27-debian-keg`, `27-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.2-alpine`, `27-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.2-alpine-ci`, `27-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.2-alpine-ci-cask`, `27-alpine-ci-cask`, `27.2-alpine-cask`, `27-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.2-alpine-ci-eask`, `27-alpine-ci-eask`, `27.2-alpine-eask`, `27-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.2-alpine-ci-eldev`, `27-alpine-ci-eldev`, `27.2-alpine-eldev`, `27-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.2-alpine-ci-keg`, `27-alpine-ci-keg`, `27.2-alpine-keg`, `27-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.1-debian`, `27.1`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.1-debian-ci`, `27.1-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.1-debian-ci-cask`, `27.1-ci-cask`, `27.1-debian-cask`, `27.1-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.1-debian-ci-eask`, `27.1-ci-eask`, `27.1-debian-eask`, `27.1-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.1-debian-ci-eldev`, `27.1-ci-eldev`, `27.1-debian-eldev`, `27.1-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.1-debian-ci-keg`, `27.1-ci-keg`, `27.1-debian-keg`, `27.1-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`27.1-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.1-alpine-ci-cask`, `27.1-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.1-alpine-ci-eask`, `27.1-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.1-alpine-ci-eldev`, `27.1-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`27.1-alpine-ci-keg`, `27.1-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.3-debian`, `26.3`, `26-debian`, `26`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.3-debian-ci`, `26.3-ci`, `26-debian-ci`, `26-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.3-debian-ci-cask`, `26.3-ci-cask`, `26-debian-ci-cask`, `26-ci-cask`, `26.3-debian-cask`, `26.3-cask`, `26-debian-cask`, `26-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.3-debian-ci-eask`, `26.3-ci-eask`, `26-debian-ci-eask`, `26-ci-eask`, `26.3-debian-eask`, `26.3-eask`, `26-debian-eask`, `26-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.3-debian-ci-eldev`, `26.3-ci-eldev`, `26-debian-ci-eldev`, `26-ci-eldev`, `26.3-debian-eldev`, `26.3-eldev`, `26-debian-eldev`, `26-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.3-debian-ci-keg`, `26.3-ci-keg`, `26-debian-ci-keg`, `26-ci-keg`, `26.3-debian-keg`, `26.3-keg`, `26-debian-keg`, `26-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.3-alpine`, `26-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.3-alpine-ci`, `26-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.3-alpine-ci-cask`, `26-alpine-ci-cask`, `26.3-alpine-cask`, `26-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.3-alpine-ci-eask`, `26-alpine-ci-eask`, `26.3-alpine-eask`, `26-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.3-alpine-ci-eldev`, `26-alpine-ci-eldev`, `26.3-alpine-eldev`, `26-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.3-alpine-ci-keg`, `26-alpine-ci-keg`, `26.3-alpine-keg`, `26-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.2-debian`, `26.2`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.2-debian-ci`, `26.2-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.2-debian-ci-cask`, `26.2-ci-cask`, `26.2-debian-cask`, `26.2-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.2-debian-ci-eask`, `26.2-ci-eask`, `26.2-debian-eask`, `26.2-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.2-debian-ci-eldev`, `26.2-ci-eldev`, `26.2-debian-eldev`, `26.2-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.2-debian-ci-keg`, `26.2-ci-keg`, `26.2-debian-keg`, `26.2-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.2-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.2-alpine-ci-cask`, `26.2-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.2-alpine-ci-eask`, `26.2-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.2-alpine-ci-eldev`, `26.2-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.2-alpine-ci-keg`, `26.2-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.1-debian`, `26.1`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.1-debian-ci`, `26.1-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.1-debian-ci-cask`, `26.1-ci-cask`, `26.1-debian-cask`, `26.1-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.1-debian-ci-eask`, `26.1-ci-eask`, `26.1-debian-eask`, `26.1-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.1-debian-ci-eldev`, `26.1-ci-eldev`, `26.1-debian-eldev`, `26.1-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.1-debian-ci-keg`, `26.1-ci-keg`, `26.1-debian-keg`, `26.1-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`26.1-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.1-alpine-ci-cask`, `26.1-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.1-alpine-ci-eask`, `26.1-alpine-eask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.1-alpine-ci-eldev`, `26.1-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`26.1-alpine-ci-keg`, `26.1-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.3-debian`, `25.3`, `25-debian`, `25`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.3-debian-ci`, `25.3-ci`, `25-debian-ci`, `25-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.3-debian-ci-cask`, `25.3-ci-cask`, `25-debian-ci-cask`, `25-ci-cask`, `25.3-debian-cask`, `25.3-cask`, `25-debian-cask`, `25-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.3-debian-ci-eldev`, `25.3-ci-eldev`, `25-debian-ci-eldev`, `25-ci-eldev`, `25.3-debian-eldev`, `25.3-eldev`, `25-debian-eldev`, `25-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.3-debian-ci-keg`, `25.3-ci-keg`, `25-debian-ci-keg`, `25-ci-keg`, `25.3-debian-keg`, `25.3-keg`, `25-debian-keg`, `25-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.3-alpine`, `25-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.3-alpine-ci`, `25-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.3-alpine-ci-cask`, `25-alpine-ci-cask`, `25.3-alpine-cask`, `25-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.3-alpine-ci-eldev`, `25-alpine-ci-eldev`, `25.3-alpine-eldev`, `25-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.3-alpine-ci-keg`, `25-alpine-ci-keg`, `25.3-alpine-keg`, `25-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.2-debian`, `25.2`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.2-debian-ci`, `25.2-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.2-debian-ci-cask`, `25.2-ci-cask`, `25.2-debian-cask`, `25.2-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.2-debian-ci-eldev`, `25.2-ci-eldev`, `25.2-debian-eldev`, `25.2-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.2-debian-ci-keg`, `25.2-ci-keg`, `25.2-debian-keg`, `25.2-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.2-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.2-alpine-ci-cask`, `25.2-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.2-alpine-ci-eldev`, `25.2-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.2-alpine-ci-keg`, `25.2-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.1-debian`, `25.1`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.1-debian-ci`, `25.1-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.1-debian-ci-cask`, `25.1-ci-cask`, `25.1-debian-cask`, `25.1-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.1-debian-ci-eldev`, `25.1-ci-eldev`, `25.1-debian-eldev`, `25.1-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.1-debian-ci-keg`, `25.1-ci-keg`, `25.1-debian-keg`, `25.1-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`25.1-alpine`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.1-alpine-ci-cask`, `25.1-alpine-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.1-alpine-ci-eldev`, `25.1-alpine-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`25.1-alpine-ci-keg`, `25.1-alpine-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/alpine/Dockerfile)
- [`24.5-debian`, `24.5`, `24-debian`, `24`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.5-debian-ci`, `24.5-ci`, `24-debian-ci`, `24-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.5-debian-ci-cask`, `24.5-ci-cask`, `24-debian-ci-cask`, `24-ci-cask`, `24.5-debian-cask`, `24.5-cask`, `24-debian-cask`, `24-cask`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.5-debian-ci-eldev`, `24.5-ci-eldev`, `24-debian-ci-eldev`, `24-ci-eldev`, `24.5-debian-eldev`, `24.5-eldev`, `24-debian-eldev`, `24-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.5-debian-ci-keg`, `24.5-ci-keg`, `24-debian-ci-keg`, `24-ci-keg`, `24.5-debian-keg`, `24.5-keg`, `24-debian-keg`, `24-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.4-debian`, `24.4`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.4-debian-ci`, `24.4-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.4-debian-ci-eldev`, `24.4-ci-eldev`, `24.4-debian-eldev`, `24.4-eldev`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.4-debian-ci-keg`, `24.4-ci-keg`, `24.4-debian-keg`, `24.4-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.3-debian`, `24.3`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.3-debian-ci`, `24.3-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.3-debian-ci-keg`, `24.3-ci-keg`, `24.3-debian-keg`, `24.3-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.2-debian`, `24.2`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.2-debian-ci`, `24.2-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.2-debian-ci-keg`, `24.2-ci-keg`, `24.2-debian-keg`, `24.2-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.1-debian`, `24.1`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.1-debian-ci`, `24.1-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`24.1-debian-ci-keg`, `24.1-ci-keg`, `24.1-debian-keg`, `24.1-keg`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`23.4-debian`, `23.4`, `23-debian`, `23`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)
- [`23.4-debian-ci`, `23.4-ci`, `23-debian-ci`, `23-ci`](https://github.com/Silex/docker-emacs/blob/main/dockerfiles/debian/Dockerfile)

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
- Modify `README.md.template` and files in the `dockerfiles` directory if needed.
- Run `bin/images --generate` to spread the changes everywhere.
