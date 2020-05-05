FROM ubuntu:12.04

RUN apt-get update && \
    apt-get install -y \
            autoconf \
            automake \
            build-essential \
            curl \
            git \
            gnupg \
            imagemagick \
            ispell \
            libcanberra-gtk-module \
            libdbus-1-dev \
            libgif-dev \
            libgnutls-dev \
            libgpm-dev \
            libgtk2.0-dev \
            libjpeg-dev \
            libmagick++-dev \
            libncurses-dev \
            libpng-dev \
            libtiff-dev \
            libx11-dev \
            libxpm-dev \
            openssh-client \
            python \
            texinfo \
    && rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-23.4"
ENV EMACS_VERSION="23.4"
ENV EMACS_REPOSITORY="git://git.sv.gnu.org/emacs.git"

RUN git clone --depth 1 --branch $EMACS_BRANCH $EMACS_REPOSITORY /opt/emacs && \
    cd /opt/emacs && \
    ./configure --with-crt-dir=/usr/lib/x86_64-linux-gnu --with-x-toolkit=no && \
    make bootstrap && \
    make && \
    make install

RUN mkdir -p /root/.emacs.d/elpa/gnupg && \
    chmod 700 /root/.emacs.d/elpa/gnupg && \
    gpg --homedir /root/.emacs.d/elpa/gnupg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 066DAFCB81E42C40

CMD ["emacs"]
