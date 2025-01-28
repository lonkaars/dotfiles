#!/bin/zsh
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zcompdump"

# do not glob for calculator command
aliases[=]="noglob ="

# color aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# completion
autoload -U compinit
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
setopt auto_menu # show completion menu when spamming <tab>
setopt complete_in_word
setopt always_to_end # move cursor to end of word after completion
setopt auto_cd # cd if the command is a valid path
WORDCHARS="${WORDCHARS:gs/\//}" # remove '/' from WORDCHARS
compinit -d "$ZSH_COMPDUMP"

# history
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTSIZE=10000000
export SAVEHIST=10000000
setopt share_history

# keybinds
bindkey -e # emacs bindings
bindkey '^[[Z' reverse-menu-complete

# prompt
unset PROMPT
setopt PROMPT_SUBST
prompt_segment() {
	content="$1"
	[ -z "$content" ] && return
	echo "%{\e[90m%}${content}%{\e[30m%} -> %{\e[0m%}"
}
prompt_mod_git_info() {
	git rev-parse --is-inside-work-tree 1> /dev/null 2> /dev/null || return
	prompt_segment "git $(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
}
# only display hostname in prompt if connected over SSH
[ -n "$SSH_CLIENT" ] && PROMPT+="$(prompt_segment '%m')"
# working directory
PROMPT+="$(prompt_segment '%c')"
# git info (if in repo)
PROMPT+="\$(prompt_mod_git_info)"

