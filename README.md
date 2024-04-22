![https://github.com/Silex/docker-emacs/actions](https://github.com/Silex/docker-emacs/actions/workflows/ci.yml/badge.svg)

# Description

Run Emacs in docker containers!

Project page: https://github.com/Silex/docker-emacs

Wraps [nix-emacs-ci](https://github.com/purcell/nix-emacs-ci) in docker images.

# Images

| OS                                | Tag                      | Size (MB) | Inherits from      | Contents                                                              |
|-----------------------------------|--------------------------|-----------|--------------------|-----------------------------------------------------------------------|
| [debian](https://debian.org)      | $version                 | 370       |                    | Emacs & curl, gnupg, ssh, wget                                        |
| [debian](https://debian.org)      | $version-ci              | 470       | $version           | [git](https://git-scm.com) & make                                     |
| [debian](https://debian.org)      | $version-ci-cask         | 510       | $version-ci        | [Cask](https://caskreadthedocs.io) & [Python](https://www.python.org) |
| [debian](https://debian.org)      | $version-ci-eask         | 510       | $version-ci        | [Eask](https://github.com/emacs-eask/cli)                             |
| [debian](https://debian.org)      | $version-ci-eldev        | 470       | $version-ci        | [eldev](https://github.com/doublep/eldev)                             |
| [debian](https://debian.org)      | $version-ci-keg          | 470       | $version-ci        | [keg](https://github.com/conao3/keg.el)                               |
| [alpine](https://alpinelinux.org) | $version-alpine          | 240       |                    | Emacs & curl, gnupg, ssh, wget                                        |
| [alpine](https://alpinelinux.org) | $version-alpine-ci       | 250       | $version-alpine    | [git](https://git-scm.com) & make                                     |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-cask  | 300       | $version-alpine-ci | [Cask](https://caskreadthedocs.io) & [Python](https://www.python.org) |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-eask  | 300       | $version-alpine-ci | [Eask](https://github.com/emacs-eask/cli)                             |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-eldev | 250       | $version-alpine-ci | [eldev](https://github.com/doublep/eldev)                             |
| [alpine](https://alpinelinux.org) | $version-alpine-ci-keg   | 250       | $version-alpine-ci | [keg](https://github.com/conao3/keg.el)                               |

# Tags

- [`master`](https://github.com/Silex/docker-emacs/blob/master/master/debian/Dockerfile)
- [`master-ci`](https://github.com/Silex/docker-emacs/blob/master/master/debian/ci/Dockerfile)
- [`master-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/master/debian/ci/cask/Dockerfile)
- [`master-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/master/debian/ci/eask/Dockerfile)
- [`master-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/master/debian/ci/eldev/Dockerfile)
- [`master-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/master/debian/ci/keg/Dockerfile)
- [`master-alpine`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/Dockerfile)
- [`master-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/ci/Dockerfile)
- [`master-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/ci/cask/Dockerfile)
- [`master-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/ci/eask/Dockerfile)
- [`master-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/ci/eldev/Dockerfile)
- [`master-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/master/alpine/ci/keg/Dockerfile)
- [`29.3`, `29`, `latest`](https://github.com/Silex/docker-emacs/blob/master/29.3/debian/Dockerfile)
- [`29.3-ci`, `29-ci`, `ci`](https://github.com/Silex/docker-emacs/blob/master/29.3/debian/ci/Dockerfile)
- [`29.3-ci-cask`, `29-ci-cask`, `ci-cask`](https://github.com/Silex/docker-emacs/blob/master/29.3/debian/ci/cask/Dockerfile)
- [`29.3-ci-eask`, `29-ci-eask`, `ci-eask`](https://github.com/Silex/docker-emacs/blob/master/29.3/debian/ci/eask/Dockerfile)
- [`29.3-ci-eldev`, `29-ci-eldev`, `ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/29.3/debian/ci/eldev/Dockerfile)
- [`29.3-ci-keg`, `29-ci-keg`, `ci-keg`](https://github.com/Silex/docker-emacs/blob/master/29.3/debian/ci/keg/Dockerfile)
- [`29.3-alpine`, `29-alpine`, `alpine`](https://github.com/Silex/docker-emacs/blob/master/29.3/alpine/Dockerfile)
- [`29.3-alpine-ci`, `29-alpine-ci`, `alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/29.3/alpine/ci/Dockerfile)
- [`29.3-alpine-ci-cask`, `29-alpine-ci-cask`, `alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/29.3/alpine/ci/cask/Dockerfile)
- [`29.3-alpine-ci-eask`, `29-alpine-ci-eask`, `alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/29.3/alpine/ci/eask/Dockerfile)
- [`29.3-alpine-ci-eldev`, `29-alpine-ci-eldev`, `alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/29.3/alpine/ci/eldev/Dockerfile)
- [`29.3-alpine-ci-keg`, `29-alpine-ci-keg`, `alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/29.3/alpine/ci/keg/Dockerfile)
- [`29.2`](https://github.com/Silex/docker-emacs/blob/master/29.2/debian/Dockerfile)
- [`29.2-ci`](https://github.com/Silex/docker-emacs/blob/master/29.2/debian/ci/Dockerfile)
- [`29.2-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/29.2/debian/ci/cask/Dockerfile)
- [`29.2-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/29.2/debian/ci/eask/Dockerfile)
- [`29.2-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/29.2/debian/ci/eldev/Dockerfile)
- [`29.2-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/29.2/debian/ci/keg/Dockerfile)
- [`29.2-alpine`](https://github.com/Silex/docker-emacs/blob/master/29.2/alpine/Dockerfile)
- [`29.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/29.2/alpine/ci/Dockerfile)
- [`29.2-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/29.2/alpine/ci/cask/Dockerfile)
- [`29.2-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/29.2/alpine/ci/eask/Dockerfile)
- [`29.2-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/29.2/alpine/ci/eldev/Dockerfile)
- [`29.2-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/29.2/alpine/ci/keg/Dockerfile)
- [`29.1`](https://github.com/Silex/docker-emacs/blob/master/29.1/debian/Dockerfile)
- [`29.1-ci`](https://github.com/Silex/docker-emacs/blob/master/29.1/debian/ci/Dockerfile)
- [`29.1-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/29.1/debian/ci/cask/Dockerfile)
- [`29.1-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/29.1/debian/ci/eask/Dockerfile)
- [`29.1-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/29.1/debian/ci/eldev/Dockerfile)
- [`29.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/29.1/debian/ci/keg/Dockerfile)
- [`29.1-alpine`](https://github.com/Silex/docker-emacs/blob/master/29.1/alpine/Dockerfile)
- [`29.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/29.1/alpine/ci/Dockerfile)
- [`29.1-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/29.1/alpine/ci/cask/Dockerfile)
- [`29.1-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/29.1/alpine/ci/eask/Dockerfile)
- [`29.1-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/29.1/alpine/ci/eldev/Dockerfile)
- [`29.1-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/29.1/alpine/ci/keg/Dockerfile)
- [`28.2`, `28`](https://github.com/Silex/docker-emacs/blob/master/28.2/debian/Dockerfile)
- [`28.2-ci`, `28-ci`](https://github.com/Silex/docker-emacs/blob/master/28.2/debian/ci/Dockerfile)
- [`28.2-ci-cask`, `28-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/28.2/debian/ci/cask/Dockerfile)
- [`28.2-ci-eask`, `28-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/28.2/debian/ci/eask/Dockerfile)
- [`28.2-ci-eldev`, `28-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/28.2/debian/ci/eldev/Dockerfile)
- [`28.2-ci-keg`, `28-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/28.2/debian/ci/keg/Dockerfile)
- [`28.2-alpine`, `28-alpine`](https://github.com/Silex/docker-emacs/blob/master/28.2/alpine/Dockerfile)
- [`28.2-alpine-ci`, `28-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/28.2/alpine/ci/Dockerfile)
- [`28.2-alpine-ci-cask`, `28-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/28.2/alpine/ci/cask/Dockerfile)
- [`28.2-alpine-ci-eask`, `28-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/28.2/alpine/ci/eask/Dockerfile)
- [`28.2-alpine-ci-eldev`, `28-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/28.2/alpine/ci/eldev/Dockerfile)
- [`28.2-alpine-ci-keg`, `28-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/28.2/alpine/ci/keg/Dockerfile)
- [`28.1`](https://github.com/Silex/docker-emacs/blob/master/28.1/debian/Dockerfile)
- [`28.1-ci`](https://github.com/Silex/docker-emacs/blob/master/28.1/debian/ci/Dockerfile)
- [`28.1-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/28.1/debian/ci/cask/Dockerfile)
- [`28.1-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/28.1/debian/ci/eask/Dockerfile)
- [`28.1-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/28.1/debian/ci/eldev/Dockerfile)
- [`28.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/28.1/debian/ci/keg/Dockerfile)
- [`28.1-alpine`](https://github.com/Silex/docker-emacs/blob/master/28.1/alpine/Dockerfile)
- [`28.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/28.1/alpine/ci/Dockerfile)
- [`28.1-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/28.1/alpine/ci/cask/Dockerfile)
- [`28.1-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/28.1/alpine/ci/eask/Dockerfile)
- [`28.1-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/28.1/alpine/ci/eldev/Dockerfile)
- [`28.1-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/28.1/alpine/ci/keg/Dockerfile)
- [`27.2`, `27`](https://github.com/Silex/docker-emacs/blob/master/27.2/debian/Dockerfile)
- [`27.2-ci`, `27-ci`](https://github.com/Silex/docker-emacs/blob/master/27.2/debian/ci/Dockerfile)
- [`27.2-ci-cask`, `27-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/27.2/debian/ci/cask/Dockerfile)
- [`27.2-ci-eask`, `27-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/27.2/debian/ci/eask/Dockerfile)
- [`27.2-ci-eldev`, `27-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/27.2/debian/ci/eldev/Dockerfile)
- [`27.2-ci-keg`, `27-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/27.2/debian/ci/keg/Dockerfile)
- [`27.2-alpine`, `27-alpine`](https://github.com/Silex/docker-emacs/blob/master/27.2/alpine/Dockerfile)
- [`27.2-alpine-ci`, `27-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/27.2/alpine/ci/Dockerfile)
- [`27.2-alpine-ci-cask`, `27-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/27.2/alpine/ci/cask/Dockerfile)
- [`27.2-alpine-ci-eask`, `27-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/27.2/alpine/ci/eask/Dockerfile)
- [`27.2-alpine-ci-eldev`, `27-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/27.2/alpine/ci/eldev/Dockerfile)
- [`27.2-alpine-ci-keg`, `27-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/27.2/alpine/ci/keg/Dockerfile)
- [`27.1`](https://github.com/Silex/docker-emacs/blob/master/27.1/debian/Dockerfile)
- [`27.1-ci`](https://github.com/Silex/docker-emacs/blob/master/27.1/debian/ci/Dockerfile)
- [`27.1-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/27.1/debian/ci/cask/Dockerfile)
- [`27.1-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/27.1/debian/ci/eask/Dockerfile)
- [`27.1-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/27.1/debian/ci/eldev/Dockerfile)
- [`27.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/27.1/debian/ci/keg/Dockerfile)
- [`27.1-alpine`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/Dockerfile)
- [`27.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/ci/Dockerfile)
- [`27.1-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/ci/cask/Dockerfile)
- [`27.1-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/ci/eask/Dockerfile)
- [`27.1-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/ci/eldev/Dockerfile)
- [`27.1-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/27.1/alpine/ci/keg/Dockerfile)
- [`26.3`, `26`](https://github.com/Silex/docker-emacs/blob/master/26.3/debian/Dockerfile)
- [`26.3-ci`, `26-ci`](https://github.com/Silex/docker-emacs/blob/master/26.3/debian/ci/Dockerfile)
- [`26.3-ci-cask`, `26-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.3/debian/ci/cask/Dockerfile)
- [`26.3-ci-eask`, `26-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/26.3/debian/ci/eask/Dockerfile)
- [`26.3-ci-eldev`, `26-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.3/debian/ci/eldev/Dockerfile)
- [`26.3-ci-keg`, `26-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.3/debian/ci/keg/Dockerfile)
- [`26.3-alpine`, `26-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/Dockerfile)
- [`26.3-alpine-ci`, `26-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/ci/Dockerfile)
- [`26.3-alpine-ci-cask`, `26-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/ci/cask/Dockerfile)
- [`26.3-alpine-ci-eask`, `26-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/ci/eask/Dockerfile)
- [`26.3-alpine-ci-eldev`, `26-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/ci/eldev/Dockerfile)
- [`26.3-alpine-ci-keg`, `26-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.3/alpine/ci/keg/Dockerfile)
- [`26.2`](https://github.com/Silex/docker-emacs/blob/master/26.2/debian/Dockerfile)
- [`26.2-ci`](https://github.com/Silex/docker-emacs/blob/master/26.2/debian/ci/Dockerfile)
- [`26.2-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.2/debian/ci/cask/Dockerfile)
- [`26.2-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/26.2/debian/ci/eask/Dockerfile)
- [`26.2-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.2/debian/ci/eldev/Dockerfile)
- [`26.2-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.2/debian/ci/keg/Dockerfile)
- [`26.2-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/Dockerfile)
- [`26.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/ci/Dockerfile)
- [`26.2-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/ci/cask/Dockerfile)
- [`26.2-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/ci/eask/Dockerfile)
- [`26.2-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/ci/eldev/Dockerfile)
- [`26.2-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.2/alpine/ci/keg/Dockerfile)
- [`26.1`](https://github.com/Silex/docker-emacs/blob/master/26.1/debian/Dockerfile)
- [`26.1-ci`](https://github.com/Silex/docker-emacs/blob/master/26.1/debian/ci/Dockerfile)
- [`26.1-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.1/debian/ci/cask/Dockerfile)
- [`26.1-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/26.1/debian/ci/eask/Dockerfile)
- [`26.1-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.1/debian/ci/eldev/Dockerfile)
- [`26.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.1/debian/ci/keg/Dockerfile)
- [`26.1-alpine`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/Dockerfile)
- [`26.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/ci/Dockerfile)
- [`26.1-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/ci/cask/Dockerfile)
- [`26.1-alpine-ci-eask`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/ci/eask/Dockerfile)
- [`26.1-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/ci/eldev/Dockerfile)
- [`26.1-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/26.1/alpine/ci/keg/Dockerfile)
- [`25.3`, `25`](https://github.com/Silex/docker-emacs/blob/master/25.3/debian/Dockerfile)
- [`25.3-ci`, `25-ci`](https://github.com/Silex/docker-emacs/blob/master/25.3/debian/ci/Dockerfile)
- [`25.3-ci-cask`, `25-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.3/debian/ci/cask/Dockerfile)
- [`25.3-ci-eldev`, `25-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.3/debian/ci/eldev/Dockerfile)
- [`25.3-ci-keg`, `25-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.3/debian/ci/keg/Dockerfile)
- [`25.3-alpine`, `25-alpine`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/Dockerfile)
- [`25.3-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/ci/Dockerfile)
- [`25.3-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/ci/cask/Dockerfile)
- [`25.3-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/ci/eldev/Dockerfile)
- [`25.3-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.3/alpine/ci/keg/Dockerfile)
- [`25.2`](https://github.com/Silex/docker-emacs/blob/master/25.2/debian/Dockerfile)
- [`25.2-ci`](https://github.com/Silex/docker-emacs/blob/master/25.2/debian/ci/Dockerfile)
- [`25.2-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.2/debian/ci/cask/Dockerfile)
- [`25.2-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.2/debian/ci/eldev/Dockerfile)
- [`25.2-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.2/debian/ci/keg/Dockerfile)
- [`25.2-alpine`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/Dockerfile)
- [`25.2-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/ci/Dockerfile)
- [`25.2-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/ci/cask/Dockerfile)
- [`25.2-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/ci/eldev/Dockerfile)
- [`25.2-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.2/alpine/ci/keg/Dockerfile)
- [`25.1`](https://github.com/Silex/docker-emacs/blob/master/25.1/debian/Dockerfile)
- [`25.1-ci`](https://github.com/Silex/docker-emacs/blob/master/25.1/debian/ci/Dockerfile)
- [`25.1-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.1/debian/ci/cask/Dockerfile)
- [`25.1-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.1/debian/ci/eldev/Dockerfile)
- [`25.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.1/debian/ci/keg/Dockerfile)
- [`25.1-alpine`](https://github.com/Silex/docker-emacs/blob/master/25.1/alpine/Dockerfile)
- [`25.1-alpine-ci`](https://github.com/Silex/docker-emacs/blob/master/25.1/alpine/ci/Dockerfile)
- [`25.1-alpine-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/25.1/alpine/ci/cask/Dockerfile)
- [`25.1-alpine-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/25.1/alpine/ci/eldev/Dockerfile)
- [`25.1-alpine-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/25.1/alpine/ci/keg/Dockerfile)
- [`24.5`, `24`](https://github.com/Silex/docker-emacs/blob/master/24.5/debian/Dockerfile)
- [`24.5-ci`, `24-ci`](https://github.com/Silex/docker-emacs/blob/master/24.5/debian/ci/Dockerfile)
- [`24.5-ci-cask`, `24-ci-cask`](https://github.com/Silex/docker-emacs/blob/master/24.5/debian/ci/cask/Dockerfile)
- [`24.5-ci-eldev`, `24-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/24.5/debian/ci/eldev/Dockerfile)
- [`24.5-ci-keg`, `24-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.5/debian/ci/keg/Dockerfile)
- [`24.4`](https://github.com/Silex/docker-emacs/blob/master/24.4/debian/Dockerfile)
- [`24.4-ci`](https://github.com/Silex/docker-emacs/blob/master/24.4/debian/ci/Dockerfile)
- [`24.4-ci-eldev`](https://github.com/Silex/docker-emacs/blob/master/24.4/debian/ci/eldev/Dockerfile)
- [`24.4-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.4/debian/ci/keg/Dockerfile)
- [`24.3`](https://github.com/Silex/docker-emacs/blob/master/24.3/debian/Dockerfile)
- [`24.3-ci`](https://github.com/Silex/docker-emacs/blob/master/24.3/debian/ci/Dockerfile)
- [`24.3-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.3/debian/ci/keg/Dockerfile)
- [`24.2`](https://github.com/Silex/docker-emacs/blob/master/24.2/debian/Dockerfile)
- [`24.2-ci`](https://github.com/Silex/docker-emacs/blob/master/24.2/debian/ci/Dockerfile)
- [`24.2-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.2/debian/ci/keg/Dockerfile)
- [`24.1`](https://github.com/Silex/docker-emacs/blob/master/24.1/debian/Dockerfile)
- [`24.1-ci`](https://github.com/Silex/docker-emacs/blob/master/24.1/debian/ci/Dockerfile)
- [`24.1-ci-keg`](https://github.com/Silex/docker-emacs/blob/master/24.1/debian/ci/keg/Dockerfile)
- [`23.4`, `23`](https://github.com/Silex/docker-emacs/blob/master/23.4/debian/Dockerfile)
- [`23.4-ci`, `23-ci`](https://github.com/Silex/docker-emacs/blob/master/23.4/debian/ci/Dockerfile)

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
- Run `bin/generate` to spread the changes everywhere.
