# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lss="ls -lahs --group-directories-first"
PS1='[\u@\h \W]\$ '

setxkbmap -layout us,ru -option grp:alt_shift_toggle
eval `keychain --noask --quiet --eval gh_main_arch`

# del key workaround in st terminal (bash)
#printf '\033[?1h\033=' >/dev/tty
#tput smkx 
