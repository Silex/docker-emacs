# CLAUDE.md

This file covers only what is specific to this repo.

## What this is

Docker images that run Emacs, one per Emacs version and operating system. They wrap
[nix-emacs-ci](https://github.com/purcell/nix-emacs-ci) and are published to Docker Hub as
`silex/emacs`.

## Layout

| Path         | Holds                                                         |
| ------------ | ------------------------------------------------------------- |
| `bin/`       | entry points: image generation, builds, diffing, CI summaries |
| `images/`    | generated Dockerfiles, one directory per version and OS       |
| `templates/` | Dockerfile and README templates read by `bin/images`          |
| `proxy/`     | the Docker Hub pull-through mirror, a separate deployable     |

`templates/` and `proxy/templates/` mean different things. The first holds the Dockerfile and
README templates the generator reads; the second holds the seed files `proxy/bin/configure`
copies into `proxy/data/`.

## Generated files

`images/`, `README.md` and `README.dockerhub.md` are generated — never edit them by hand. The
sources of truth are `images.yml` and `templates/`; `bin/images --generate` propagates a change
into all three.

## Build & verify

Build an image and every image it depends on, which also runs `emacs --version` on each one:

``` shell
bin/build --os debian --version 31.1 --subdirs ci,ci/cask,ci/eask,ci/eldev,ci/keg
```

`--subdirs` is optional; omit it to build the root image alone.

`bin/build` pushes only when `GITHUB_REF_NAME` is `main`. Anywhere else it loads the image into
the local Docker daemon and tests it, which is why a local build is the way to verify a change.

## CI

Build jobs are skipped for pull requests from forks: GitHub passes no secrets or variables to
them, so they cannot reach the registry mirror and would fall back to anonymous Docker Hub pulls.
Contributions are verified by building locally instead.
