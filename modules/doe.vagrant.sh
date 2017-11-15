#/bin.sh

case ${1:-help} in
	meta) # Show all vagrant directories with metadata (.vagrant/)
		find ~ -name .vagrant
		;;
	clean) # Clean all vagrant metadata
		find ~ -name .vagrant -exec rm -dr {} +
		;;
	latest) # Check vagrant updates
		echo  "ver.installed:\t\c"
		vagrant --version
		echo "ver.latest:\t\c"
		curl -s https://releases.hashicorp.com/vagrant/ | grep vagrant_ | head -1 | cut -d'>' -f2 | cut -d'<' -f1
		;;
	help|*) # Print doe vagrant module help
		echo "Usage:\n\tdoe vagrant <subcommand>\n\nSubcommnads:"
		grep ") #[ ]" $BASH_SOURCE | sed "s/) #/$(echo "\t")/g"
		;;
esac