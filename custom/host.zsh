if [ -d $ZSH_CUSTOM/host/`hostname` ]; then
	for config_file ($ZSH_CUSTOM/host/`hostname`/*.zsh(N)); do
		source $config_file
	done
fi
