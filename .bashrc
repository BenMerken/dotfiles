
# Bash config file.
# Author: Ben Merken
# Date: April 14, 2020

# Source my main profile.

. $HOME/.profile

# If not running interactively, do nothing.

[ -z "$PS1" ] && return

# Function to display all available base  colors.

colors() {
	local fg bg vals seq0 
	for fg in {30..37}; do
		for bg in {40..47}; do
			fg=${fg#37}
			bg=${bg#40}
		
			vals="${fg:+$fg;}${bg}"		
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf " %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

# Set the prompt.

[[ $TERM =~ "rxvt" ]] && export PS1='\[\033[1;95m\][ \u@\h \[\033[0;32m\]\w\[\033[95m\] ]\[\033[0;32m\] \$\[\033[m\] '
PROMPT_COMMAND='echo -e "\033[?6;0;0c"'
