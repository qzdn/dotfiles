# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lss='ls -lahs --group-directories-first'
PS1='[\u@\h \W]\$ '

export EDITOR='/usr/bin/vim'
export GIT_EDITOR='/usr/bin/vim'

# Autoload ssh keys
eval $(keychain --eval --quiet)

# Show tasks
date && echo "---" && cal -n 3 -m -v && echo "---"
cat $HOME/Documents/tasks.txt

#if ! ps -ef | grep "[s]sh-agent" &>/dev/null; then
#  eval $(ssh-agent -s)
#fi

