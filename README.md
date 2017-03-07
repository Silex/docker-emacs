# Emacs in docker!

**COMING SOON**

Run emacs in a docker:

``` shell
docker run -it --rm -v /:/files -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix silex/emacs
```
