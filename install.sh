#!/usr/bin/env bash

grep -q '. ~/.dotfiles/.bashrc' ~/.bashrc 2>/dev/null \
    || echo "# source dotfiles
. ~/.dotfiles/.bashrc" >> ~/.bashrc

exec bash -l
