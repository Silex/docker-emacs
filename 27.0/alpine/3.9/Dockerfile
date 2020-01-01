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
        lcms2-dev \
        libcanberra-gtk3 \
        libjpeg-turbo-dev \
        libpng-dev \
        librsvg-dev \
        libxaw-dev \
        libxml2-dev \
        jansson-dev \
        ncurses-dev \
        openssh-client \
        pango-dev \
        paxmark \
        python \
        texinfo \
        tiff-dev \
    && /bin/true

ENV EMACS_BRANCH="emacs-27"
ENV EMACS_VERSION="27.0"

COPY source /opt/emacs/

RUN cd /opt/emacs && \
    if [ -d patches ]; then git apply patches/*; fi && \
    ./autogen.sh && \
    ./configure --with-modules && \
    make -j 8 && \
    make install

ENV PATH="/root/.cask/bin:$PATH"
RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

RUN mkdir -p /root/.emacs.d/elpa/gnupg && \
    chmod 700 /root/.emacs.d/elpa/gnupg && \
    gpg -q --homedir /root/.emacs.d/elpa/gnupg -k | grep 81E42C40 || \
    gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --homedir /root/.emacs.d/elpa/gnupg --recv-keys 066DAFCB81E42C40

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
        lcms2 \
        libcanberra-gtk3 \
        librsvg \
        libxpm \
        jansson \
        openssh-client \
        tiff \
    && /bin/true

ENV EMACS_BRANCH="emacs-27"
ENV EMACS_VERSION="27.0"

COPY --from=0 /root/.emacs.d /root/.emacs.d
COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
