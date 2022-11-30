if [ -d $ZSH_CUSTOM/host/`hostname -d` ]; then
    if [ -d $ZSH_CUSTOM/host/`hostname -d`/`hostname` ]; then
        for config_file ($ZSH_CUSTOM/host/`hostname -d`/`hostname`/*.zsh); do
            source $config_file
        done
    else
        for config_file ($ZSH_CUSTOM/host/`hostname -d`/*.zsh); do
            source $config_file
        done
    fi
fi
