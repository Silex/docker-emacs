FROM alpine:3.7

RUN apk add --no-cache \
    alsa-lib-dev \
    autoconf \
    automake \
    build-base \
    dpkg \
    dpkg-dev \
    fontconfig-dev \
    gawk \
    gconf-dev \
    giflib-dev \
    git \
    glib-dev \
    gnutls-dev \
    gtk+2.0-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    librsvg-dev \
    libxaw-dev \
    libxml2-dev \
    libxpm-dev \
    linux-headers \
    ncurses-dev \
    ncurses-libs \
    pango-dev \
    paxmark \
    texinfo \
    tiff-dev \
    && /bin/true

COPY emacs-25.2 /opt/emacs/
COPY patches /opt/emacs/patches
RUN cd /opt/emacs && \
    git apply patches/* && \
    ./autogen.sh && \
    ./configure && \
    make -j 8 install

# ------------------------------------------------------------

FROM alpine:3.7

RUN apk add --no-cache \
    aspell \
    aspell-en \
    curl \
    desktop-file-utils \
    hicolor-icon-theme \
    so:libICE.so.6 \
    so:libORBit-2.so.0 \
    so:libSM.so.6 \
    so:libX11-xcb.so.1 \
    so:libX11.so.6 \
    so:libXau.so.6 \
    so:libXcomposite.so.1 \
    so:libXcursor.so.1 \
    so:libXdamage.so.1 \
    so:libXdmcp.so.6 \
    so:libXext.so.6 \
    so:libXfixes.so.3 \
    so:libXft.so.2 \
    so:libXi.so.6 \
    so:libXinerama.so.1 \
    so:libXpm.so.4 \
    so:libXrandr.so.2 \
    so:libXrender.so.1 \
    so:libasound.so.2 \
    so:libatk-1.0.so.0 \
    so:libatk-bridge-2.0.so.0 \
    so:libatspi.so.0 \
    so:libblkid.so.1 \
    so:libbsd.so.0 \
    so:libbz2.so.1 \
    so:libc.musl-x86_64.so.1 \
    so:libcairo-gobject.so.2 \
    so:libcairo.so.2 \
    so:libcroco-0.6.so.3 \
    so:libdbus-1.so.3 \
    so:libepoxy.so.0 \
    so:libexpat.so.1 \
    so:libffi.so.6 \
    so:libfontconfig.so.1 \
    so:libfreetype.so.6 \
    so:libgconf-2.so.4 \
    so:libgdk-3.so.0 \
    so:libgdk_pixbuf-2.0.so.0 \
    so:libgif.so.7 \
    so:libgio-2.0.so.0 \
    so:libglib-2.0.so.0 \
    so:libgmodule-2.0.so.0 \
    so:libgmp.so.10 \
    so:libgnutls.so.30 \
    so:libgobject-2.0.so.0 \
    so:libgraphite2.so.3 \
    so:libgtk-3.so.0 \
    so:libharfbuzz.so.0 \
    so:libhogweed.so.4 \
    so:libintl.so.8 \
    so:libjpeg.so.8 \
    so:libmount.so.1 \
    so:libncursesw.so.6 \
    so:libnettle.so.6 \
    so:libp11-kit.so.0 \
    so:libpango-1.0.so.0 \
    so:libpangocairo-1.0.so.0 \
    so:libpangoft2-1.0.so.0 \
    so:libpcre.so.1 \
    so:libpixman-1.so.0 \
    so:libpng16.so.16 \
    so:librsvg-2.so.2 \
    so:libtasn1.so.6 \
    so:libtiff.so.5 \
    so:libunistring.so.2 \
    so:libuuid.so.1 \
    so:libxcb-render.so.0 \
    so:libxcb-shm.so.0 \
    so:libxcb.so.1 \
    so:libxml2.so.2 \
    so:libz.so.1 \
    && /bin/true

ENV EMACS_BRANCH="emacs-25.2"
ENV EMACS_VERSION="25.2"

COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
