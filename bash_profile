#!/bin/bash
 
shopt -s expand_aliases
 
# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc
 
HISTFILESIZE=2500
 
export PS1="#\! [\t] \[\033[01;32m\]\u\033[01;34m\] \w $\[\033[00m\] "
export EDITOR="nano"
export GREP_OPTIONS='--color=always'
export HOMEBREW_CASK_OPTS='--appdir=/Applications'
export PATH="/usr/local/bin:$PATH"

source /usr/local/etc/bash_completion.d/password-store
 
# Helpers
alias ..="cd .."
alias ls="ls -alh --color=auto"
alias ll="ls -al"
alias l="ls"
alias dev="cd /usr/www/eurogamer/dev;ll"
alias error="sudo tail -f /var/log/apache2-dev/craig.error.log | perl -pe 's/(in (.+).php)|(line (\d+))/\e[1;31m$&\e[0m/g'"
alias home="cd /var/www/dev/craig; ls"
alias mkdir="mkdir -pv"
alias search="find . -name"
alias e="error"
alias bashprofile="nano ~/.bash_profile; source ~/.bash_profile"
alias cp="cp -R"
alias cbeebies="~/'Google Drive'/Automator/cbeebies.sh"

# Dev shortcuts
alias sites="cd /etc/apache2-dev/sites-enabled; ls -al | grep craig"
alias configtest="sudo /usr/local/sbin/apache2ctl-dev configtest"
alias restart="sudo /usr/local/sbin/apache2ctl-dev restart"

# Project shortcuts
alias newrogamer="cd /var/www/dev/craig/newrogamer"
alias attract="newrogamer; cd vendor/gamernetwork/attract"

alias mysql-connect="mysql --socket=/var/run/percona/dev/craig.sock -u root -p"
  
# SVN Colours
alias svn="~/svn-colour.py"

# Custom grep commands
phpgrep() { grep -R --include=*.php "$@" ;}
jsgrep() { grep -R --include=*.js "$@" ;}
cssgrep() { grep -R --include=*.css "$@" ;}
lessgrep() { grep -R --include=*.less "$@" ;}
htmlgrep() { grep -R -n --include=*.html "$@" ;}

function stash-pull-apply()
{
        git stash
        git pull
        git stash apply
}

function varnish_purge()
{
    # file, domain
    domain=$1
    file=$2

    # To purge something on app servers:
    curl -X PURGE --header "Host: $1" --url http://omar:80/$2 -o /dev/null -sD -
    curl -X PURGE --header "Host: $1" --url http://kima:80/$2 -o /dev/null -sD -
}

function svn-history() {
    url=$1
    svn log -q $url | grep --color=never -E -e "^r[[:digit:]]+" -o | cut -c2- | sort -nr | {
        while read r
    do
            echo
            svn log -r$r $url@HEAD
            svn diff -c$r $url@HEAD
            echo
    done
    }
}

