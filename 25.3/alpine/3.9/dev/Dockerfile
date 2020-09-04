FROM alpine:3.9

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
        jansson-dev \
        lcms2-dev \
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
        wget

RUN git clone --depth 1 --branch emacs-25.3 git://git.sv.gnu.org/emacs.git /opt/emacs && \
    cd /opt/emacs && \
    curl -sSLOJ "https://git.alpinelinux.org/aports/plain/community/emacs/gamedir.patch?h=3.7-stable" && \
    curl -sSLOJ "https://git.alpinelinux.org/aports/plain/community/emacs/musl.patch?h=3.7-stable" && \
    curl -sSLOJ "https://git.alpinelinux.org/aports/plain/community/emacs/noaslr-dump.patch?h=3.7-stable" && \
    git apply *.patch && \
    ./autogen.sh && \
    ./configure --build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" --with-modules && \
    make && \
    make install

RUN mkdir -p /root/.emacs.d/elpa/gnupg && \
    chmod 700 /root/.emacs.d/elpa/gnupg && \
    for i in {1..3}; do \
      gpg --keyserver keyserver.ubuntu.com \
          --homedir /root/.emacs.d/elpa/gnupg \
          --recv-keys 066DAFCB81E42C40 \
      && break || sleep 15; \
    done

RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
ENV PATH="/root/.cask/bin:$PATH"

RUN curl -fsSL https://raw.github.com/doublep/eldev/master/webinstall/eldev | sh
ENV PATH="/root/.eldev/bin:$PATH"

CMD ["emacs"]
