FROM silex/emacs:27.2-alpine-ci

RUN apk add --no-cache python3

RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python3
ENV PATH="/root/.cask/bin:$PATH"
