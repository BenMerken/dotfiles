#!/bin/sh

# config file for the X server. Runs when you run the startx command.

# Commands run on startup of the X server are put in $XDG_CONFIG_HOME/xprofile, since this is the place where display managers generally source their config. Having one place to store all configuration makes things easier for me.

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/xprofile" ] && . "${XDG_CONFIG_HOME:-$HOME/.config}/xprofile"

# Start the i3 window manager.

export STATUSBAR="i3status"
exec i3
