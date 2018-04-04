FROM ubuntu:12.04

RUN apt-get update && \
    apt-get install -y \
            autoconf \
            automake \
            build-essential \
            imagemagick \
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
            texinfo \
            && \
    rm -rf /var/lib/apt/lists/*

COPY emacs-24.3 /opt/emacs
RUN cd /opt/emacs && \
    ./autogen.sh && \
    ./configure && \
    make -j 8 install

# ------------------------------------------------------------

FROM ubuntu:12.04

RUN apt-get update && \
    apt-get install -y \
            curl \
            imagemagick \
            ispell \
            libgif4 \
            libgnutls26 \
            libgtk2.0-0 \
            libjpeg8 \
            libmagick++4 \
            libncurses5 \
            libpng12-0 \
            libsm6 \
            libtiff4 \
            libx11-6 \
            libxpm4 \
            texinfo \
            && \
    rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-24.3"
ENV EMACS_VERSION="24.3"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
