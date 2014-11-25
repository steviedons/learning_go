# .bashrc

# Source global definitions
 if [ -f /etc/bashrc ]; then
 	. /etc/bashrc
 	fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

 	function _update_ps1() {
    export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\t [load: `cat /proc/loadavg | awk '{ print $1; }'`]\[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 7)\]\h (`head -1 /etc/issue | awk '{print $1}'`)\[$(tput setaf 6)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"
 		    }
    	export PROMPT_COMMAND="_update_ps1"
#
# User specific aliases and function
alias tsess="tmux list-sessions"
alias tatt="tmux attach -t"
# Ubuntu aliases
alias distup="sudo apt-get update && sudo apt-get dist-upgrade"
alias up="sudo apt-get update && sudo apt-get upgrade"
# movement aliases
alias ..="cd .."
alias ...="cd ../.."

