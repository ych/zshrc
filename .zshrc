# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/zshrc/custom

ZSH_THEME="ych"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

ZSH_TMUX_AUTOCONNECT="false"

# Customize to your needs...
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

if [ -d $HOME/bin ]; then
	export PATH=$HOME/bin:$PATH
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colored-man-pages history-substring-search)

git --version &> /dev/null && plugins+=(git)
rg --version &> /dev/null && plugins+=(ripgrep)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export SSLKEYLOGFILE=~/.ssl-key.log
autoload -Uz _perforce

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
