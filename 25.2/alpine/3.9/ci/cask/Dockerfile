FROM silex/emacs:25.2-alpine-ci

RUN apk add --no-cache python

RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
ENV PATH="/root/.cask/bin:$PATH"
