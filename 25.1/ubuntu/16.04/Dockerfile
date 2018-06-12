FROM ubuntu:16.04 as dev

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

ENV EMACS_BRANCH="emacs-25.1"
ENV EMACS_VERSION="25.1"

COPY source /opt/emacs

RUN cd /opt/emacs && \
    ./autogen.sh && \
    ./configure && \
    make -j 8 install

ENV PATH="/root/.cask/bin:$PATH"
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

CMD ["emacs"]

# ------------------------------------------------------------

FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
            curl \
            imagemagick \
            ispell \
            libgif7 \
            libgnutls30 \
            libgtk2.0-0 \
            libjpeg8 \
            libmagick++-6.q16-5v5 \
            libncurses5 \
            libpng12-0 \
            libsm6 \
            libtiff5 \
            libx11-6 \
            libxft2 \
            libxpm4 \
            texinfo \
            && \
    rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-25.1"
ENV EMACS_VERSION="25.1"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
