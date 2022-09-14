FROM silex/emacs:28.2-alpine

RUN apk add --no-cache \
        alsa-lib-dev \
        aspell \
        aspell-en \
        autoconf \
        automake \
        build-base \
        curl \
        dpkg \
        dpkg-dev \
        fontconfig-dev \
        gawk \
        giflib-dev \
        git \
        glib-dev \
        gnupg \
        gnutls-dev \
        gtk+3.0-dev \
        jansson-dev \
        lcms2-dev \
        libcanberra-gtk3 \
        libjpeg-turbo-dev \
        libpng-dev \
        librsvg-dev \
        libxaw-dev \
        libxml2-dev \
        ncurses-dev \
        openssh-client \
        pango-dev \
        paxmark \
        texinfo \
        tiff-dev \
        wget

RUN cd /opt && \
    curl -fsSL https://github.com/emacs-mirror/emacs/tarball/emacs-28.2 | \
    tar xz && \
    mv * emacs
