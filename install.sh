#!/bin/bash

basedir=$(dirname "$0")
cd "$basedir"
sudo cp -rv rootfs/* /
. ./install-dotfiles.sh
