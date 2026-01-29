FROM nixos/nix AS builder

# Install Emacs using nix
RUN echo 'extra-experimental-features = flakes nix-command' >> /etc/nix/nix.conf
RUN nix profile add --impure --accept-flake-config "github:purcell/nix-emacs-ci#emacs-25-2"

# Store emacs and all its dependencies to /nix-emacs
RUN nix copy --no-require-sigs --to /nix-emacs $(readlink -f $(dirname $(type -p emacs))/..)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

FROM alpine:3.21

RUN apk add --no-cache \
            curl \
            gnupg \
            openssh-client \
            wget

COPY --from=builder /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

CMD ["emacs"]
