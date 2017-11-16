#!/bin/sh

DOE_CHECKS=~/.doe/checks

[ -d ~/.doe ] || ( mkdir ~/.doe && curl -fsSL https://doe.cloud/checks -o ${DOE_CHECKS})

IFS=$'\r\n' checks=($(cat ${DOE_CHECKS}))

do_check() {
    IFS=':' a=($1)
    set +f $a
    set -f $a
    if [ -f $1 ]
    then
	echo "${RED}${a[0]} detected ${NC}"
	sh -c "${a[1]}"
    fi
}

case ${1} in
	show) # Print all checks
		cut -d':' -f1 ${DOE_CHECKS}
		;;
	all) # Verify all known environments
		set -f
		for c in ${checks[@]}; do do_check "${c}"; done
		exit 0
		;;
	help|*) # Print this help
		echo "Usage:\n\tdoe verify <subcommand>\n\nSubcommnads:"
		grep ") #[ ]" $BASH_SOURCE | sed "s/) #/$(echo "\t")/g"
		;;
esac
