#!/bin/sh

case $1 in
	release) # Create doe_latest.tar.gz release
		eval ${CALL_FUNCTION}
		;;
	install)
		eval ${CALL_FUNCTION}
		;;
	comp)
		echo "release install help"
		;;
	help|*) # Print this help
		eval ${HELP}
		;;
esac