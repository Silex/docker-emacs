FROM nixos/nix AS builder

# Rebuild if nix-emacs-ci changed
ADD https://api.github.com/repos/purcell/nix-emacs-ci/git/refs/heads/master /tmp/cache

# Install Emacs using nix
RUN echo 'extra-experimental-features = flakes nix-command' >> /etc/nix/nix.conf
ARG NIX_VERSION
RUN nix profile install --impure --accept-flake-config "github:purcell/nix-emacs-ci#${NIX_VERSION}"

# Store emacs and all its dependencies to /nix-emacs
RUN nix copy --no-require-sigs --to /nix-emacs $(type -p emacs)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

# -------------------------------------------------------------------------------

FROM alpine:3.14 AS base

RUN apk add --no-cache \
            curl \
            gnupg \
            openssh-client \
            wget

COPY --from=builder /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

CMD ["emacs"]

# -------------------------------------------------------------------------------

FROM base AS ci

RUN apk add --no-cache git make

# -------------------------------------------------------------------------------

FROM ci AS ci-cask

RUN apk add --no-cache python3

RUN git clone https://github.com/cask/cask /root/.cask
ENV PATH="/root/.cask/bin:$PATH"

# -------------------------------------------------------------------------------

FROM ci AS ci-eask

RUN apk add --no-cache unzip

RUN curl -fsSL https://raw.githubusercontent.com/emacs-eask/cli/master/webinstall/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

# -------------------------------------------------------------------------------

FROM ci AS ci-eldev

RUN curl -fsSL https://raw.github.com/doublep/eldev/master/webinstall/eldev | sh
ENV PATH="/root/.local/bin:$PATH"

# -------------------------------------------------------------------------------

FROM ci AS ci-keg

RUN git clone https://github.com/conao3/keg.el.git /root/.keg
ENV PATH="/root/.keg/bin:$PATH"
