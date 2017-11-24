#!/bin/sh

func=$1
shift

case "${func}" in
	init) # Initiate doe ( add PATH, autocompetion, etc...)
		eval "${CALL_FUNCTION}"
		;;
	add-mod)
		;;
		
	update)
		eval "${CALL_FUNCTION}"
		;;
	release) # Create doe_latest.tar.gz release
		eval "${CALL_FUNCTION}"
		;;
	completion)
		list_module_functions "${BASH_SOURCE[0]}"
#		echo "init update release help"
		;;
	help|*) # Print this help
		eval "${HELP}"
		;;
esac
