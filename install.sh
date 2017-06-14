#!/bin/bash

basedir=$(dirname "$0")
cd "$basedir"
cp -rv rootfs/* /
. ./install-dotfiles.sh
