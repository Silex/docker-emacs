FROM silex/nix

ADD https://git.sv.gnu.org/git/emacs.git/refs/heads/master /tmp/cache

#RUN nix-shell -p cachix --run 'cachix use emacs-ci'
RUN nix-env -iA emacs-snapshot -f https://github.com/silex/nix-emacs-ci/archive/master.tar.gz
RUN nix copy --no-require-sigs --to /nix-emacs $(type -p emacs)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

FROM alpine

COPY --from=0 /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

CMD ["emacs"]