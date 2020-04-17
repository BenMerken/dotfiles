#!/bin/sh

# Personal profile file. Runs on login. Environmental variables are set here.
# Author: Ben Merken
# Date: April 11, 2020
# Licence: GPL v3.0

export PATH="$PATH:$HOME/.local/bin"
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export CLICOLOR=1
export LC_ALL="en_US.UTF-8"
export LS_COLORS="di=1;34:ln=25:so=32:pi=33:ex=31:bd=34"

# Set the base locations for the condifurations of the programs that I use.
# For this, I (loosely) use the XDG Base Directory specification.
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export VIM_DOT_DIR="$XDG_CONFIG_HOME/vim"
export URXVT_DOT_DIR="$XDG_CONFIG_HOME/urxvt"

# Read aliases from the ~/.aliases file.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shellrc" ] && . "${XDG_CONFIG_HOME:-$HOME/.config}/shellrc" || echo "File $HOME/.aliases not found"

# When the terminal is /dev/tty1 (which it is by default), and the X server isn't running yet, start the graphical environment.
[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && exec startx
