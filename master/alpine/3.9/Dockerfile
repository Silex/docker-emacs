FROM alpine:3.9 as dev

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
        gnupg \
        gnutls-dev \
        gtk+3.0-dev \
        libcanberra-gtk3 \
        libjpeg-turbo-dev \
        libpng-dev \
        librsvg-dev \
        libxaw-dev \
        libxml2-dev \
        ncurses-dev \
        openssh-client \
        pango-dev \
        paxmark \
        python \
        texinfo \
        tiff-dev \
    && /bin/true

ENV EMACS_BRANCH="master"
ENV EMACS_VERSION="master"

COPY source /opt/emacs/

RUN cd /opt/emacs && \
    if [ -d patches ]; then git apply patches/*; fi && \
    ./autogen.sh && \
    ./configure && \
    make -j 8 install

ENV PATH="/root/.cask/bin:$PATH"
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

CMD ["emacs"]

# ------------------------------------------------------------

FROM alpine:3.9

RUN apk add --no-cache \
        alsa-lib \
        aspell \
        aspell-en \
        curl \
        desktop-file-utils \
        gconf \
        giflib \
        gnupg \
        gtk+3.0 \
        libcanberra-gtk3 \
        librsvg \
        libxpm \
        openssh-client \
        tiff \
    && /bin/true

ENV EMACS_BRANCH="master"
ENV EMACS_VERSION="master"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
