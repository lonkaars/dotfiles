#!/bin/zsh

# # oh-my-zsh
# zstyle ':omz:update' mode disabled
# DISABLE_AUTO_UPDATE=true
# DISABLE_UPDATE_PROMPT=true
# plugins=(zsh-syntax-highlighting)
# export ZSH="$XDG_DATA_HOME/oh-my-zsh"
# export ZSH_COMPDUMP="$XDG_CACHE_HOME/zcompdump"
# source "$ZSH/oh-my-zsh.sh"

# prompt
source "$XDG_CONFIG_HOME/zsh/prompt"

# do not glob for calculator command
aliases[=]="noglob ="

autoload -U compinit

# completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
setopt auto_menu
setopt complete_in_word
setopt always_to_end

# keybinds
bindkey -e # emacs bindings
bindkey '^[[Z' reverse-menu-complete

# zsh autocompletion
compinit -d "$ZSH_COMPDUMP"

