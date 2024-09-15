#!/bin/bash

DIR=$(pwd)

ln -fs $DIR/files/vimrc ~/.vimrc

if [ -f /run/.containerenv ] || [ -f /.dockerenv ]; then
    echo "In Script runs in Container"
fi

# On devcontainer install common utils
# https://github.com/devcontainers/features/blob/main/src/common-utils/main.sh
echo "TEST" > ~/setup-test

