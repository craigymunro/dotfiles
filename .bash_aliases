#!/bin/bash

# Home directory
alias home="cd ~; ls"

# Helpers
alias ..="cd .."
alias bashprofile="nano ~/.bash_profile; source ~/.bash_profile"
alias blatcomposer="git checkout composer.lock"
alias cp="cp -R"
alias cu="composer update"
alias dev="cd /usr/www/eurogamer/dev;ll"
alias error="sudo tail -f /var/log/apache2-dev/craig.error.log | perl -pe 's/(in (.+).php)|(line (\d+))/\e[1;33m$&\e[0m/g'"
alias e="error"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias h="history"
alias l="ls"
alias ll="ls -al"
alias ls="ls -alh"
alias mkdir="mkdir -pv"
alias search="find . -name"
alias cask="brew cask"

# Dev shortcuts
alias sites="cd /etc/apache2-dev/sites-enabled; ls -al | grep craig"
alias configtest="sudo /usr/local/sbin/apache2ctl-dev configtest"
alias restart="sudo /usr/local/sbin/apache2ctl-dev restart"

# Project shortcuts
alias newrogamer="cd /var/www/dev/craig/newrogamer"
alias attract="newrogamer; cd vendor/gamernetwork/attract"
alias atelier="cd /var/www/dev/craig/atelier"
alias admin="cd /var/www/dev/craig/admin"
alias mimport="/var/www/dev/craig/magnet-data-conversion/scripts/dump.sh; /var/www/dev/craig/magnet-data-conversion/scripts/load.sh craig";

# MySQL
alias mysql-connect="mysql --socket=/var/run/percona/dev/craig.sock -u root -p"

# Dreamhost
alias dreamhost-connect="ssh soberproductions@ps571826.dreamhostps.com"