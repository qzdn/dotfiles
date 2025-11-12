# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lss='ls -lahs --group-directories-first --color=auto'

export PATH=$PATH:$HOME/.config/scripts
export EDITOR='/usr/bin/vim'
export GIT_EDITOR='/usr/bin/vim'

# Autoload ssh keys
eval $(keychain --eval --quiet)

# Show tasks
cal -n 3 -m -v && echo "---" && date && echo "---"
cat $HOME/Documents/tasks.txt

