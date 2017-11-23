#!/bin/sh

_doe_completion()
{
    local cur prev
    cur=${COMP_WORDS[COMP_CWORD]}

    case ${COMP_CWORD} in
	1)
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe completion)" -- $cur) )
		;;
	2)
		prev=${COMP_WORDS[COMP_CWORD-1]}
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe $prev completion)" -- $cur) )
		;;
	*)
		COMPREPLY=()
		;;
    esac
}

complete -F _doe_completion doe
