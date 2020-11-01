FROM silex/emacs:24.4-ci

RUN apt-get update && \
    apt-get install -y python && \
    rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
ENV PATH="/root/.cask/bin:$PATH"
