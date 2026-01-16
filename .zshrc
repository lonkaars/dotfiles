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
! [ -d "$XDG_DATA_HOME/zsh" ] && mkdir -p "$XDG_DATA_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTSIZE=10000000
export SAVEHIST=10000000
setopt hist_ignore_space
setopt share_history
setopt hist_ignore_dups

# keybinds
bindkey -e # emacs bindings
bindkey '^[[Z' reverse-menu-complete

# prompt
setopt PROMPT_SUBST
export VIRTUAL_ENV_DISABLE_PROMPT=y
PROMPT='$(eo=%{ ec=%} prompt)'
