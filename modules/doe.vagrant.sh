#/bin.sh

case ${1:-help} in
	machines) # XXX
		find ~ -name .vagrant/machines
		#vagrant global-status
		;;
	
	help|*) # doe vagrant module help
		echo "Usage:\n\tdoe vagrant <subcommand>\n\nSubcommnads:"
		grep ") #[ ]" $BASH_SOURCE | sed "s/) #/$(echo "\t")/g"
		;;
esac