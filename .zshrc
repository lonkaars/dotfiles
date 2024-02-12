ZSH_THEME="loek"
zstyle ':omz:update' mode reminder
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

plugins=(
	git
	zsh-syntax-highlighting
)

# oh-my-zsh
export ZSH="$HOME/.local/share/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"

# shift-tab fix
bindkey '^[[Z' reverse-menu-complete

# zsh autocompletion
compinit -D

# evaluate math expression in python by running `= <expr>`
function = () { python3 -c "from math import *; deg = pi / 180; print($*)" }
aliases[=]="noglob ="
alias 16="python3 -c 'import sys;print(f\"{int(sys.stdin.read().strip()):x}\")'"

# cleanup
fork rm -rf ~/.xsession-errors ~/.xsession-errors.old ~/.zshrc.zwc ~/.lesshst ~/.lyrics ~/.android ~/.zcalc_history .git-credentials .node_repl_history .python_history

