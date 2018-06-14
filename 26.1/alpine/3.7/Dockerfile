FROM alpine:3.7 as dev

RUN apk add --no-cache \
        alsa-lib-dev \
        aspell \
        aspell-en \
        autoconf \
        automake \
        build-base \
        curl \
        dpkg \
        dpkg-dev \
        fontconfig-dev \
        gawk \
        gconf-dev \
        giflib-dev \
        git \
        glib-dev \
        gnutls-dev \
        libc-utils \
        gtk+2.0-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        librsvg-dev \
        libxaw-dev \
        libxml2-dev \
        ncurses-dev \
        openssh-client \
        pango-dev \
        paxmark \
        texinfo \
        tiff-dev \
    && /bin/true

ENV EMACS_BRANCH="emacs-26.1"
ENV EMACS_VERSION="26.1"

COPY source /opt/emacs/
COPY patches /opt/emacs/patches

RUN cd /opt/emacs && \
    git apply patches/* && \
    ./autogen.sh && \
    ./configure && \
    make -j 8 install

ENV PATH="/root/.cask/bin:$PATH"
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

CMD ["emacs"]

# ------------------------------------------------------------

FROM alpine:3.7

RUN apk add --no-cache \
        alsa-lib \
        aspell \
        aspell-en \
        curl \
        desktop-file-utils \
        gconf \
        giflib \
        gtk+3.0 \
        libc-utils \
        librsvg \
        libxpm \
        openssh-client \
        tiff \
    && /bin/true

ENV EMACS_BRANCH="emacs-26.1"
ENV EMACS_VERSION="26.1"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
