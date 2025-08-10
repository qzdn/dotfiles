# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lss="ls -lahs --group-directories-first"
PS1='[\u@\h \W]\$ '

export EDITOR='/usr/bin/vim'

if ! ps -ef | grep "[s]sh-agent" &>/dev/null; then
  eval $(ssh-agent -s)
fi

#setxkbmap -layout us,ru -option grp:alt_shift_toggle
#eval $(keychain --eval --noask ~/.ssh/gh_laptop_arch)
