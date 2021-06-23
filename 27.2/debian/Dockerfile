FROM silex/nix

RUN nix-env -iA emacs-27-2 -f https://github.com/silex/nix-emacs-ci/archive/master.tar.gz
RUN nix copy --no-require-sigs --to /nix-emacs $(type -p emacs)
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
