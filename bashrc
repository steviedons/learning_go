# .bashrc

# Source global definitions
 if [ -f /etc/bashrc ]; then
 	. /etc/bashrc
 	fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

 	function _update_ps1() {
 		export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\t [load: `cat /proc/loadavg | awk '{ print $1; }'`]\[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 7)\]\h \[$(tput setaf 6)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"
 		    }
 	    	export PROMPT_COMMAND="_update_ps1"
#
# User specific aliases and functions

