#/bin.sh

case ${1} in
	ubuntu) # Quick start ubuntu/xenial64
		[ -d ~/.doe/tmp ] || ( mkdir -p ~/.doe/tmp/ubuntu )
		sh -c 'cd ~/.doe/tmp/ubuntu && vagrant init ubuntu/xenial64 --minimal --force && vagrant up && vagrant ssh'
		;;
	vms) # Show all vagrant VMs info 
		echo ${RED}'Metadata:'${NC}
		find ~ -name .vagrant
		echo ${RED}'Vagrant global status:'${NC}
		vagrant global-status
		echo ${RED}'Running vboxes'${NC}
		ps x | grep VBoxHeadless
		;;
	clean) # Clean all vagrant metadata
		find ~ -name .vagrant -exec rm -dr {} +
		vagrant global-status --prune
		killall VBoxHeadless
		;;
	latest) # Check vagrant updates
		echo 'ver.installed:\t\c'
		vagrant --version
		echo 'ver.latest:\t\c'
		curl -s https://releases.hashicorp.com/vagrant/ | grep vagrant_ | head -1 | cut -d'>' -f2 | cut -d'<' -f1
		;;
	help|*) # Print doe vagrant module help
		echo 'Usage:\n\tdoe vagrant <subcommand>\n\nSubcommnads:'
		grep ") #[ ]" $BASH_SOURCE | sed "s/) #/$(echo "\t")/g"
		;;
esac