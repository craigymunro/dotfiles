#!/bin/bash

# Home directory
alias home="cd ~; ls"

# Helpers
alias ..="cd .."
alias bashprofile="nano ~/.bash_profile; source ~/.bash_profile"
alias blatcomposer="git checkout composer.lock"
alias cp="cp -R"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias h="history"
alias l="ls"
alias ll="ls -al"
alias ls="ls -alhG"
alias mkdir="mkdir -pv"
alias search="find . -name"
alias cask="brew cask"

# MySQL
alias mysql-connect="mysql --socket=/var/run/percona/dev/craig.sock -u root -p"
