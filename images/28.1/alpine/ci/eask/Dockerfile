FROM silex/emacs:28.1-alpine-ci

RUN apk add --no-cache unzip

RUN curl -fsSL https://raw.githubusercontent.com/emacs-eask/cli/master/webinstall/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"
