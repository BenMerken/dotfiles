#!/bin/sh

# Personal profile file. Runs on login. Environmental variables are set here.
# Author: Ben Merken
# Date: April 11, 2020
# Licence: GPL v3.0

# Add '~/.scripts' to $PATH.
export PATH="$PATH:$HOME/.scripts"
export CONFIG="$HOME/.config"

export EDITOR="vim"
export TERMINAL="bash"

# Read aliases from the ~/.aliases file.
[ -f "$HOME/.aliases" ] && . "$HOME/.aliases" || echo "File $HOME/.aliases not found"

# Set the prompt.
export PS1='\e[0;32m\u\e[m \e[0;33m\w\e[m \n\$ '
