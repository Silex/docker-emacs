# Description

Run Emacs in a docker!

# Tags

{{TAGS}}

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
