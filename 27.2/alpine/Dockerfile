FROM silex/nix

ADD https://api.github.com/repos/purcell/nix-emacs-ci/git/refs/heads/master /tmp/cache
RUN nix-env -iA cachix -f https://cachix.org/api/v1/install
RUN cachix use emacs-ci
RUN nix-env -iA emacs-27-2 -f https://github.com/purcell/nix-emacs-ci/archive/master.tar.gz
RUN nix copy --no-require-sigs --to /nix-emacs $(type -p emacs)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

FROM alpine:3.14

RUN apk add --no-cache \
            curl \
            gnupg \
            openssh-client

COPY --from=0 /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

CMD ["emacs"]
