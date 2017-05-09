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
export GREP_OPTIONS='--color=auto'
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_GITHUB_API_TOKEN="ed1991384e6e93d77783312c77ca12868dce1e89"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export PATH=$HOME/local/bin:$PATH
export PS1="$LIGHTGREY#\! [\t] $GREEN\u@\h $BLUE\w $LIGHTGREY\$(parse_git_branch) $WHITE$ "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

[ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"