#!/bin/bash

DIR=$(pwd)

ln -fs $DIR/files/vimrc ~/.vimrc
ln -fs $DIR/files/zshrc ~/.zshrc

if [ -f /run/.containerenv ] || [ -f /.dockerenv ]; then
    echo "Dotfiles are deployed in a container"
    if command -v dnf 2>&1 >/dev/null; then
       echo "Installing packages with dnf"
       sudo dnf install \
         bash-completion \
         bind-utils \
         ca-certificates \
         curl \
         gawk \
         git \
         git-lfs \
         gnupg2 \
         grep \
         iproute \
         jq \
         krb5-libs \
         less \
         libicu \
         lsof \
         man-db \
         net-tools \
         openssh-clients \
         openssl-libs \
         procps \
         psmisc \
         rsync \
         sed \
         strace \
         sudo \
         unzip \
         vim-enhanced \
         wget \
         which \
         xz \
         zip \
         zlib \
         zsh \
         -qy
    fi
fi

# On devcontainer install common utils
# https://github.com/devcontainers/features/blob/main/src/common-utils/main.sh
echo "TEST" > ~/setup-test
