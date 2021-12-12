FROM silex/nix

ADD https://git.sv.gnu.org/git/emacs.git/refs/heads/master /tmp/cache

ADD https://api.github.com/repos/Silex/nix-emacs-ci/commits?per_page=1 /tmp/cache
RUN nix-env -iA emacs-snapshot -f https://github.com/silex/nix-emacs-ci/archive/master.tar.gz
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
