#!/bin/sh

# Bash config file.
# Author: Ben Merken
# Date: April 14, 2020
# License: GPL v3.0

# If not running interactively, do nothing.
[ -z "$PS1" ] && return

# Set the prompt.
[ $TERM == "linux" ] && export PS1='\[\033[1;95m\][ \u@\h \[\033[0;32m\]\w\[\033[95m\] ]\[\033[0;32m\] \$\[\033[m\] '
PROMPT_COMMAND='echo -e "\033[?6;0;0c"'
