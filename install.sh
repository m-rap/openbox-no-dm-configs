#!/bin/bash

basedir=$(dirname "$0")
cd "$basedir"
cp -rv rootfs/* /
cd dotfiles
for f in * ; do
    if [[ -f $f ]]; then
        if [[ -f "$HOME/.$f" ]]; then
            mv -v "$HOME/.$f" "$HOME/.$f.bak"
        fi
        cp -v $f "$HOME/.$f"
    else
        mkdir -v "$HOME/.$f"
        cp -rv $f/* "$HOME/.$f"
    fi
done
