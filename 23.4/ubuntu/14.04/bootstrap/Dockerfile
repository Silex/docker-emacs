FROM silex/emacs:23.4-dev
FROM ubuntu:14.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
            curl \
            gnupg \
            gpm \
            imagemagick \
            ispell \
            libcanberra-gtk-module \
            libgif4 \
            libgnutls26 \
            libgtk2.0-0 \
            libjpeg8 \
            libmagick++5 \
            libncurses5 \
            libpng12-0 \
            libsm6 \
            libtiff5 \
            libx11-6 \
            libxpm4 \
            openssh-client \
            texinfo \
    && rm -rf /var/lib/apt/lists/*

ENV EMACS_BRANCH="emacs-23.4"
ENV EMACS_VERSION="23.4"

COPY --from=0 /root/.emacs.d /root/.emacs.d
COPY --from=0 /usr/local /usr/local

CMD ["emacs"]
