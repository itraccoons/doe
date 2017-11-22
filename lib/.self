#!/bin/sh

func=$1
shift

case "${func}" in
	init)
		eval "${CALL_FUNCTION}"
		;;
	update)
		eval "${CALL_FUNCTION}"
		;;
	release) # Create doe_latest.tar.gz release
		eval "${CALL_FUNCTION}"
		;;
	comp)
		echo "init update release help"
		;;
	help|*) # Print this help
		eval "${HELP}"
		;;
esac
