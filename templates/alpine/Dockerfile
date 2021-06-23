FROM silex/nix

{{CACHE}}

RUN nix-env -iA {{NIX-VERSION}} -f https://github.com/silex/nix-emacs-ci/archive/master.tar.gz
RUN nix copy --no-require-sigs --to /nix-emacs $(type -p emacs)
RUN cd /nix-emacs/nix/store && ln -s *emacs* emacs

FROM alpine

RUN apk add --no-cache \
            curl \
            gnupg \
            openssh-client

COPY --from=0 /nix-emacs/nix/store /nix/store
ENV PATH="/nix/store/emacs/bin:$PATH"

CMD ["emacs"]
