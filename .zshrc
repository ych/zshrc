# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/zshrc/custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ych"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colored-man-pages history-substring-search)

#if [ balabala ]; then
#	plugins+=(command-not-found debian)
#fi

if [ -f $HOME/.ssh/id_rsa ]; then
	plugins+=(ssh-agent)
fi
autojump -v &> /dev/null && plugins+=(autojump)
docker -v &> /dev/null && plugins+=(docker)
git --version &> /dev/null && plugins+=(git)
git flow version &> /dev/null && plugins+=(git-flow)
if [ -d $HOME/hub/bin ]; then
	export PATH=$HOME/hub/bin:$PATH
	hub --version &> /dev/null && plugins+=(github)
fi
command-not-found &> /dev/null && plugins+=(command-not-found)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

if [ -d $HOME/bin ]; then
	export PATH=$HOME/bin:$PATH
fi
if [ -d /usr/local/go/bin ]; then
	export PATH=/usr/local/go/bin:$PATH
fi
if [ -d $HOME/go/bin ]; then
	export PATH=$HOME/go/bin:$PATH
fi
if [ -d $HOME/.tmuxifier/bin ]; then
	export PATH=$PATH:$HOME/.tmuxifier/bin
fi
go version &> /dev/null && plugins+=(golang)

export SSLKEYLOGFILE=~/.ssl-key.log

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
