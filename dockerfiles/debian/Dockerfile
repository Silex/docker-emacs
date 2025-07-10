FROM nixos/nix AS builder

# Install Emacs using nix
RUN echo 'extra-experimental-features = flakes nix-command' >> /etc/nix/nix.conf
ARG NIX_VERSION
RUN nix profile add --impure --accept-flake-config "github:purcell/nix-emacs-ci#${NIX_VERSION}"

# Store emacs and all its dependencies to /nix-emacs
RUN nix copy --no-require-sigs --to /nix-emacs $(readlink -f $(dirname $(type -p emacs))/..)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

# -------------------------------------------------------------------------------

FROM debian AS base

RUN apt-get update && \
    apt-get install -y \
            curl \
            gnupg \
            openssh-client \
            wget \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

CMD ["emacs"]

# -------------------------------------------------------------------------------

FROM base AS ci

RUN apt-get update && \
    apt-get install -y git make && \
    rm -rf /var/lib/apt/lists/*

# -------------------------------------------------------------------------------

FROM ci AS ci-cask

RUN apt-get update && \
    apt-get install -y python3 && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/cask/cask /root/.cask
ENV PATH="/root/.cask/bin:$PATH"

# -------------------------------------------------------------------------------

FROM ci AS ci-eask

RUN apt-get update && \
    apt-get install -y unzip && \
    rm -rf /var/lib/apt/lists/*

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

# -------------------------------------------------------------------------------

FROM base AS cache

# Reference all layers in final cache layer
COPY --from=base     /etc/os-release /tmp/base
COPY --from=ci       /etc/os-release /tmp/ci
COPY --from=ci-cask  /etc/os-release /tmp/ci-cask
COPY --from=ci-eask  /etc/os-release /tmp/ci-eask
COPY --from=ci-eldev /etc/os-release /tmp/ci-eldev
COPY --from=ci-keg   /etc/os-release /tmp/ci-keg
