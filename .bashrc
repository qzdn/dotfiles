# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Use bash-completion, if available, and avoid double-sourcing
[[ $PS1 &&
  ! ${BASH_COMPLETION_VERSINFO:-} &&
  -f /usr/share/bash-completion/bash_completion ]] &&
    . /usr/share/bash-completion/bash_completion


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lss='ls -lahs --group-directories-first --color=auto'

export PATH=$PATH:$HOME/.config/scripts:$HOME/.config/scripts/yt.sh
export EDITOR='/usr/bin/vim'
export GIT_EDITOR='/usr/bin/vim'

# KB Layout
setxkbmap -option '' && setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle -option caps:escape

# Autoload ssh keys
eval $(keychain --eval --quiet)

# Show tasks
cal -n 3 -m -v && echo "---" && date && echo "---"

