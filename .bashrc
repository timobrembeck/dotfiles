# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nano

# Aliases
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi
