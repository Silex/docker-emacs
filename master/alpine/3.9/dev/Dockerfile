FROM alpine:3.9

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
        gconf-dev \
        giflib-dev \
        git \
        glib-dev \
        gnupg \
        gnutls-dev \
        gtk+3.0-dev \
        lcms2-dev \
        libcanberra-gtk3 \
        libjpeg-turbo-dev \
        libpng-dev \
        librsvg-dev \
        libxaw-dev \
        libxml2-dev \
        jansson-dev \
        ncurses-dev \
        openssh-client \
        pango-dev \
        paxmark \
        python \
        texinfo \
        tiff-dev

ENV EMACS_BRANCH="master"
ENV EMACS_VERSION="master"
ENV EMACS_REPOSITORY="git://git.sv.gnu.org/emacs.git"

ADD https://git.sv.gnu.org/git/emacs.git/refs/heads/master /tmp/cache

RUN git clone --depth 1 --branch $EMACS_BRANCH $EMACS_REPOSITORY /opt/emacs && \
    cd /opt/emacs && \
    ./autogen.sh && \
    ./configure --with-modules && \
    make -j $(nproc) && \
    make install

RUN mkdir -p /root/.emacs.d/elpa/gnupg && \
    chmod 700 /root/.emacs.d/elpa/gnupg && \
    gpg --homedir /root/.emacs.d/elpa/gnupg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 066DAFCB81E42C40

RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
ENV PATH="/root/.cask/bin:$PATH"

CMD ["emacs"]
