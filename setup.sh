#!/bin/bash

DIR=$(pwd)

ln -s $DIR/files/vimrc ~/.vimrc

# On devcontainer install common utils
# https://github.com/devcontainers/features/blob/main/src/common-utils/main.sh
echo "TEST" > ~/setup-test
