#!/bin/sh

_doe()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ~/.doe/lib)" -- $cur) )
}

complete -F _doe doe
