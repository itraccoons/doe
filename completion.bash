#!/bin/sh

_doe()
{
    local cur prev
    cur=${COMP_WORDS[COMP_CWORD]}

    case ${COMP_CWORD} in
	1)
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe comp)" -- $cur) )
		;;
	2)
		prev=${COMP_WORDS[COMP_CWORD-1]}
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe $prev comp)" -- $cur) )
		;;
	*)
		COMPREPLY=()
		;;
    esac
}

complete -F _doe doe
