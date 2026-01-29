FROM nixos/nix AS builder

# Install Emacs using nix
RUN echo 'extra-experimental-features = flakes nix-command' >> /etc/nix/nix.conf
RUN nix profile add --impure --accept-flake-config "github:purcell/nix-emacs-ci#emacs-28-2"

# Store emacs and all its dependencies to /nix-emacs
RUN nix copy --no-require-sigs --to /nix-emacs $(readlink -f $(dirname $(type -p emacs))/..)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

FROM debian

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
