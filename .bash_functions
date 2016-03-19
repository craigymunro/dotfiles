#!/bin/bash

# Git shortcut
function g () {
	if [ $# -eq 0 ]; then
		git status
	else
		git "$@"
	fi
}

# Custom grep commands
function cssgrep()  { grep -R -n --include=*.css "$@" ;}
function htmlgrep() { grep -R -n --include=*.html "$@" ;}
function jsgrep()   { grep -R -n --include=*.js "$@" ;}
function lessgrep() { grep -R -n --include=*.less "$@" ;}
function phpgrep()  { grep -R -n --exclude=Loc.inc.php --include=*.php "$@" ;}

function gitpush() {
	./tasks/less-to-css.sh
	git add .
	git commit -a -m "$1"
	git pull
	git push
}

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function stash-pull-apply()
{
	git stash
	git pull
	git stash apply
}

function varnish_purge()
{
    # file, domain
    file=$1
    domain=$2

    # To purge something on app servers:
    curl -X PURGE --header "Host: $2" --url http://omar:80/$1
    curl -X PURGE --header "Host: $2" --url http://kima:80/$1
}

function vpn-connect {
        osascript ~/Google\ Drive/Automator/vpn-connect.scpt
}

function vpn-disconnect {
        osascript ~/Google\ Drive/Automator/vpn-disconnect.scpt
}
