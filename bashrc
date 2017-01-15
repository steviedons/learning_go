#source ~/.bash_prompt.sh

## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .* --color=auto'
# if powerline is installed, then use it
# on arch edit the following file and In the block "shell", the entry for theme is set to "default". Replace that with "default_leftonly".
# vim /usr/lib/python3.5/site-packages/powerline/config_files/config.json
# restart the deamon with "powerline-daemon -k; sleep 2; powerline-daemon -q"

command -v powerline-daemon &>/dev/null
if [ $? -eq 0 ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
else
	GIT_PROMPT_ONLY_IN_REPO=0
	GIT_PROMPT_START='\[\033[0;32m\]\u@\h\[\033[0;37m\] $PWD'
	GIT_PROMPT_THEME=Default_Ubuntu
	GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
	source ~/dotfiles/bash-git-prompt/gitprompt.sh
fi
