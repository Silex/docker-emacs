FROM ubuntu:14.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
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
    for i in {1..3}; do \
      gpg --keyserver keyserver.ubuntu.com \
          --homedir /root/.emacs.d/elpa/gnupg \
          --recv-keys 066DAFCB81E42C40 \
      && break || sleep 15; \
    done

CMD ["emacs"]
