#!/usr/bin/env bash

# set the terminal PS1
export PS1='\[\033[32m\]\u@\h:\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]$ '

# temp set the parent directory of this file
DOT_FILES_HOME=$(dirname "${BASH_SOURCE[0]}")

# connect to the ssh-agent
. "$DOT_FILES_HOME/ssh-agent"

if [[ "${MSYSTEM:-}" =~ ^MING|^MSYS ]]; then
    # source msystem shell
    . "$DOT_FILES_HOME/.msystemrc"
elif [[ "$(uname -r)" =~ Microsoft$ ]]; then
    # source wsl shell
    . "$DOT_FILES_HOME/.wslrc"
fi

unset DOT_FILES_HOME
