#!/bin/bash

# Home directory
alias home="cd /var/www/dev/craig; ls"

# Helpers
alias ..="cd .."
alias bashprofile="nano ~/.bash_profile; source ~/.bash_profile"
alias cp="cp -R"
alias dev="cd /usr/www/eurogamer/dev;ll"
alias error="sudo tail -f /var/log/apache2-dev/craig.error.log | perl -pe 's/(in (.+).php)|(line (\d+))/\e[1;33m$&\e[0m/g'"
alias e="error"
alias h="history"
alias l="ls"
alias ll="ls -al"
alias ls="ls -alh --color=auto"
alias mkdir="mkdir -pv"
alias search="find . -name"

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
