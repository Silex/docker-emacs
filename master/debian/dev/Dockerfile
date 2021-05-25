FROM silex/emacs:master

RUN apt-get update && \
    apt-get install -y \
            autoconf \
            automake \
            autotools-dev \
            build-essential \
            curl \
            dpkg-dev \
            git \
            gnupg \
            imagemagick \
            iputils-ping \
            ispell \
            libacl1-dev \
            libasound2-dev \
            libcanberra-gtk3-module \
            libdbus-1-dev \
            libgif-dev \
            libgnutls28-dev \
            libgpm-dev \
            libgtk-3-dev \
            libjansson-dev \
            libjpeg-dev \
            liblcms2-dev \
            liblockfile-dev \
            libm17n-dev \
            libmagick++-6.q16-dev \
            libncurses5-dev \
            libotf-dev \
            libpng-dev \
            librsvg2-dev \
            libselinux1-dev \
            libtiff-dev \
            libxaw7-dev \
            libxml2-dev \
            openssh-client \
            texinfo \
            wget \
            xaw3dg-dev \
            zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt && \
    curl -fsSL https://github.com/emacs-mirror/emacs/tarball/master | \
    tar xz && \
    mv * emacs
