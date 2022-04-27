#!/bin/bash

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s checkwinsize
umask 0000

export PATH=${PATH}:/tmp/composer/vendor/bin

for f in $HOME/*.sh; do
    if [ -e "$f" ]; then
      . "$f"
    fi
done

PS1="[\[\e[0;31m\]\A\[\e[0m\]][`hostname`]:\[\033[01;34m\]\w\[\033[00m\]\n\$ "