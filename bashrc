#source ~/.bash_prompt.sh
GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_START='\[\033[0;32m\]\u@\h\[\033[0;37m\] $PWD'
GIT_PROMPT_THEME=Default_Ubuntu
GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
source ~/dotfiles/bash-git-prompt/gitprompt.sh

## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .* --color=auto'
