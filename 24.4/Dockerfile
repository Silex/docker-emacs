from ubuntu:14.04

# Install dependencies
run apt-get update && \
    apt-get install -y wget build-essential && \
    apt-get build-dep -y emacs24

# Install emacs
env EMACS_VERSION="24.4"
run cd /tmp && \
    wget http://ftpmirror.gnu.org/emacs/emacs-$EMACS_VERSION.tar.xz && \
    tar xf emacs-$EMACS_VERSION.tar.xz && \
    cd /tmp/emacs-$EMACS_VERSION && \
    ./configure && \
    make -j 8 install

workdir /files

entrypoint ["emacs"]
