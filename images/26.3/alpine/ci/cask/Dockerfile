FROM silex/emacs:26.3-alpine-ci

RUN apk add --no-cache python3

RUN git clone https://github.com/cask/cask /root/.cask
ENV PATH="/root/.cask/bin:$PATH"
