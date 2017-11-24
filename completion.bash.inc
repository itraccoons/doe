#!/bin/sh

_doe_completion()
{
    cur=${COMP_WORDS[COMP_CWORD]}

    case ${COMP_CWORD} in
	1)
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe list-modules)" -- $cur) )
		;;
	2)
		module=${COMP_WORDS[COMP_CWORD-1]}
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe $module list-functions)" -- $cur) )
		;;
	*)
		COMPREPLY=()
		;;
    esac
}

complete -F _doe_completion doe
