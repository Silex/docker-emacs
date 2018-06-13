FROM ubuntu:18.04 as dev

RUN apt-get update && \
    apt-get install -y \
            autoconf \
            automake \
            autotools-dev \
            build-essential \
            curl \
            dbus-x11 \
            debhelper \
            dpkg-dev \
            git \
            gnupg-agent \
            imagemagick \
            ispell \
            libacl1-dev \
            libasound2-dev \
            libdbus-1-dev \
            libgif-dev \
            libgnutls28-dev \
            libgpm-dev \
            libgtk-3-dev \
            libjpeg-dev \
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
            procps \
            python \
            quilt \
            sharutils \
            texinfo \
            xaw3dg-dev \
            zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-25.1"
ENV EMACS_VERSION="25.1"

COPY source /opt/emacs

RUN cd /opt/emacs && \
    ./autogen.sh && \
    ./configure CFLAGS=-no-pie && \
    make -j 8 install

ENV PATH="/root/.cask/bin:$PATH"
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

CMD ["emacs"]

# ------------------------------------------------------------

FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
            curl \
            imagemagick \
            ispell \
            libacl1 \
            libasound2 \
            libc6 \
            libcairo2 \
            libdbus-1-3 \
            libfontconfig1 \
            libfreetype6 \
            libgdk-pixbuf2.0-0 \
            libgif7 \
            libglib2.0-0 \
            libgnutls30 \
            libgpm2 \
            libgtk-3-0 \
            libice6 \
            libjpeg8 \
            libm17n-0 \
            libmagickcore-6.q16-3 \
            libmagickwand-6.q16-3 \
            libotf0 \
            libpango-1.0-0 \
            libpng16-16 \
            librsvg2-2 \
            libselinux1 \
            libsm6 \
            libtiff5 \
            libtinfo5 \
            libx11-6 \
            libx11-xcb1 \
            libxcb1 \
            libxfixes3 \
            libxft2 \
            libxml2 \
            libxpm4 \
            libxrender1 \
            openssh-client \
            texinfo \
            zlib1g \
    && rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-25.1"
ENV EMACS_VERSION="25.1"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
