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

function find-file() {
        find . -name "$@"
}

function brew-daily {
	brew update;
	brew upgrade;
	brew cleanup;
	brew cask cleanup;
	brew doctor;
	echo "Checking App Store for software updates...";
	mas outdated;
	mas upgrade;
}
