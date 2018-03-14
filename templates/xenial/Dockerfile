FROM ubuntu:16.04

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

COPY {{BRANCH}} /opt/emacs
RUN cd /opt/emacs && \
    ./autogen.sh && \
    ./configure && \
    make -j 8 install

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

ENV EMACS_BRANCH="{{BRANCH}}"
ENV EMACS_VERSION="{{VERSION}}"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
