FROM ubuntu:12.04

RUN apt-get update && \
    apt-get install -y \
            autoconf \
            automake \
            build-essential \
            curl \
            git \
            imagemagick \
            ispell \
            libdbus-1-dev \
            libgif-dev \
            libgnutls-dev \
            libgtk2.0-dev \
            libjpeg-dev \
            libmagick++-dev \
            libncurses-dev \
            libpng-dev \
            libtiff-dev \
            libx11-dev \
            libxpm-dev \
            python \
            texinfo \
            && \
    rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="{{BRANCH}}"
ENV EMACS_VERSION="{{VERSION}}"

COPY $EMACS_BRANCH /opt/emacs
RUN cd /opt/emacs && \
    ./configure --with-crt-dir=/usr/lib/x86_64-linux-gnu && \
    make bootstrap && \
    make -j 8 install

CMD ["emacs"]
