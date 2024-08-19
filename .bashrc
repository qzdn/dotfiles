#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# del key workaround in st terminal (bash)
#printf '\033[?1h\033=' >/dev/tty
tput smkx 

alias lss="ls -lahs --group-directories-first"
