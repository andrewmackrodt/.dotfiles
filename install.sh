#!/usr/bin/env bash

DOT_FILES_HOME=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

grep -q ". '$DOT_FILES_HOME/.bashrc'" ~/.bashrc 2>/dev/null \
    || echo "
# source dotfiles
. '$DOT_FILES_HOME/.bashrc'" >> ~/.bashrc

exec bash -l
