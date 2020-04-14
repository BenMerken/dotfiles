#!/bin/sh

# Personal profile file. Runs on login. Environmental variables are set here.
# Author: Ben Merken
# Date: April 11, 2020
# Licence: GPL v3.0

export PATH="$PATH:$HOME/.scripts"	# Add '~/.scripts' to $PATH.
export CONFIG="$HOME/.config"
export EDITOR="vim"
export TERMINAL="bash"
export CLICOLOR=1
export LS_COLORS="di=34:ln=25:so=32:pi=33:ex=31:bd=34"

# Read aliases from the ~/.aliases file.
[ -f "$HOME/.aliases" ] && . "$HOME/.aliases" || echo "File $HOME/.aliases not found"

# Source the Bash configuration.
. $HOME/.bashrc
