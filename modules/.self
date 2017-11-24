#!/bin/sh

func=$1
shift

case "${func}" in
	init) # Initiate doe ( add PATH, autocompetion, etc...)
		eval "${CALL_FUNCTION}"
		;;
	add-module)
#		add_module_template
		;;
	update)
		eval "${CALL_FUNCTION}"
		;;
	release) # Create doe_latest.tar.gz release
		eval "${CALL_FUNCTION}"
		;;
	list-functions)
		list_module_functions "${BASH_SOURCE[0]}"
		;;
	help|*) # Print this help
		show_help "${BASH_SOURCE[0]}"
		;;
esac
