ZSH_THEME="loek"

# no
zstyle ':omz:update' mode disabled
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

plugins=(
	git
	zsh-syntax-highlighting
)

# oh-my-zsh
export ZSH="$HOME/.local/share/oh-my-zsh"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zcompdump-$HOST"
source "$ZSH/oh-my-zsh.sh"

# shift-tab fix
bindkey '^[[Z' reverse-menu-complete

# zsh autocompletion
compinit -D

# do not glob for calculator command
aliases[=]="noglob ="

