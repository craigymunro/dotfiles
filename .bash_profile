#!/bin/bash

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bash_functions ]] && . ~/.bash_functions

shopt -s expand_aliases
shopt -s histappend

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
DARKGREY="\[\033[0;30m\]"
LIGHTGREY="\[\033[0;37m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
WHITE="\[\033[01;37m\]"

HISTFILESIZE=2500
HISTSIZE=1000
HISTTIMEFORMAT="[%F %T] "

export EDITOR="nano"
export GREP_OPTIONS='--color=always'
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH=$HOME/local/bin:$PATH
export PS1="$LIGHTGREY#\! [\t] $GREEN\u@\h $BLUE\w $LIGHTGREY\$(parse_git_branch) $WHITE$ "

source ~/.bash_functions

home
