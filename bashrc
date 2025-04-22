#
# ~/.bashrc
#
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
