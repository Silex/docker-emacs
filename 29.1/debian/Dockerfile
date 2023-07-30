FROM nixos/nix

ADD https://api.github.com/repos/purcell/nix-emacs-ci/git/refs/heads/master /tmp/cache
RUN nix-env -iA cachix -f https://cachix.org/api/v1/install
RUN cachix use emacs-ci
RUN nix-env -iA emacs-29-1 -f https://github.com/purcell/nix-emacs-ci/archive/master.tar.gz
RUN nix --extra-experimental-features nix-command copy --no-require-sigs --to /nix-emacs $(type -p emacs)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

FROM debian

RUN apt-get update && \
    apt-get install -y \
            curl \
            gnupg \
            openssh-client \
    && rm -rf /var/lib/apt/lists/*

COPY --from=0 /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

CMD ["emacs"]
