FROM silex/emacs:25.3-alpine-dev
FROM alpine:3.9

RUN apk add --no-cache \
        alsa-lib \
        aspell \
        aspell-en \
        curl \
        desktop-file-utils \
        gconf \
        giflib \
        gnupg \
        gtk+3.0 \
        lcms2 \
        libcanberra-gtk3 \
        librsvg \
        libxpm \
        jansson \
        openssh-client \
        tiff

ENV EMACS_BRANCH="emacs-25.3"
ENV EMACS_VERSION="25.3"

COPY --from=0 /root/.emacs.d /root/.emacs.d
COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
