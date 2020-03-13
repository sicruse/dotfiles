# Avoid terminal color support warning
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"

# Using Ben Hilburn's PowerLevel 9K integration with oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

# Keep oh-my-zsh up to date!
DISABLE_AUTO_UPDATE=false

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo z history history-substring-search)

# User configuration
export PATH="$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$(ruby -rrubygems -e 'puts Gem.user_dir')/bin:$PATH"

# Allow history search via up/down keys.
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

source $ZSH/oh-my-zsh.sh
