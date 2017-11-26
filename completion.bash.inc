#!/bin/sh

_doe_completion()
{
    w=${COMP_WORDS[COMP_CWORD]}

    case ${COMP_CWORD} in
	1)
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe list-modules)" -- $w) )
		;;
	2)
		module=${COMP_WORDS[COMP_CWORD-1]}
		COMPREPLY=( $(compgen -W "$(~/doe/bin/doe $module list-functions)" -- $w) )
		;;
	*)
		COMPREPLY=()
		;;
    esac
}

complete -F _doe_completion doe
