# Description

Run Emacs in a docker!

This project provides different docker images:

- The main images (~450MB) only contain the runtime dependencies for Emacs to run.
- The `-dev` variants (~1200MB) contain additional developer tools such as [Cask](https://cask.readthedocs.io), [git](https://git-scm.com) or [Python](https://www.python.org).
  The Emacs source is also available at `/opt/emacs` if you need to build Emacs differently.
- The `-alpine` variants (~200MB) follow the same logic as the main images but are based on [Alpine Linux](https://alpinelinux.org).

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

# Contributions

Yes please! You should mostly do your modifications to `images.yml` or inside the `/templates` directory,
then run `bin/images generate` to apply the changes.
