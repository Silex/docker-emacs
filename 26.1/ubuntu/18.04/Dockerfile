FROM ubuntu:18.04 as dev

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
            ispell \
            libacl1-dev \
            libasound2-dev \
            libcanberra-gtk3-module \
            liblcms2-dev \
            libdbus-1-dev \
            libgif-dev \
            libgnutls28-dev \
            libgpm-dev \
            libgtk-3-dev \
            libjansson-dev \
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
            python \
            texinfo \
            xaw3dg-dev \
            zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-26.1"
ENV EMACS_VERSION="26.1"

COPY source /opt/emacs

RUN cd /opt/emacs && \
    ./autogen.sh && \
    ./configure --with-modules && \
    make -j 8 && \
    make install

ENV PATH="/root/.cask/bin:$PATH"
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

CMD ["emacs"]

# ------------------------------------------------------------

FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
            curl \
            gnupg \
            gpm \
            imagemagick \
            ispell \
            libacl1 \
            libasound2 \
            libcanberra-gtk3-module \
            liblcms2-2 \
            libdbus-1-3 \
            libgif7 \
            libgnutls30 \
            libgtk-3-0 \
            libjansson4 \
            libjpeg8 \
            libm17n-0 \
            libpng16-16 \
            librsvg2-2 \
            libsm6 \
            libtiff5 \
            libx11-xcb1 \
            libxml2 \
            libxpm4 \
            openssh-client \
            texinfo \
    && rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-26.1"
ENV EMACS_VERSION="26.1"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
