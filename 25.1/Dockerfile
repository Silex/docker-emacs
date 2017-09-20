from ubuntu:16.04

# Install dependencies
run apt-get update && \
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
            texinfo

# Build emacs
arg EMACS_REPOSITORY="git://git.sv.gnu.org/emacs.git"
arg EMACS_BRANCH="emacs-25.1"
run git clone --depth 1 --branch $EMACS_BRANCH $EMACS_REPOSITORY /tmp/emacs && \
    cd /tmp/emacs && \
    ./autogen.sh && \
    ./configure && \
    make -j 8 install && \
    rm -rf /tmp/emacs

workdir /rootfs
entrypoint ["emacs"]
