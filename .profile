#!/bin/sh
#
# this file should only contain posix-compliant shell customizations and
# environment variables. shell-specific customizations should be done in the
# respective shell's profile or init file (e.g. .zshrc, .bash_profile, etc.)

# AJATT (user account only because TTYs don't render non-ascii characters)
export LANG='ja_JP.UTF-8'

# aliases
alias cls='clear'
alias vim='nvim'
alias copy='xclip -selection c'
alias dnd='dragon-drag-and-drop -a -x'
alias mk='make'
alias sl='sl -w'
alias vv='neovide'
alias today='khal list today today'
alias bctl='bluetoothctl'
alias sctl='systemctl --user'
alias fv='nvim "$(fzf)"'

# one letters
alias r='ranger'
alias v='nvim'
alias m='neomutt'
alias y='yay'
alias n='ncmpcpp'
alias c='khal'
alias f='fork'
alias p='pass'
alias b='bluetoothctl'
alias s='systemctl --user'

# force colorterm
export COLORTERM="truecolor"

# xdg base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# script locations
export PATH="$HOME/.local/share/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
export PATH="$HOME/.local/share/cargo/bin:$PATH"
# export PATH="/opt/f4pga/xc7/conda/bin:$PATH"
export PATH="$HOME/.lyp/bin:$PATH"

# other stuff
export EDITOR="nvim"
export PAGER="less"
export FZF_DEFAULT_COMMAND="find . -name '.?*' -prune -o -print"
export FZF_DEFAULT_OPTS="--color=16"
export GOPATH="$HOME/.local/go"
[ -e "$XDG_CONFIG_HOME/gtk-4.0/env" ] && . "$XDG_CONFIG_HOME/gtk-4.0/env"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_EXTENSIONS_DIR="$XDG_DATA_HOME/pass-extensions"

# use .config/ instead of home directory
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export gnome_user_dir="$HOME/.config/gnome/apps"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PARALLEL_HOME="$XDG_CONFIG_HOME/parallel"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export CONAN_USER_HOME="$XDG_CONFIG_HOME/conan"
alias nvidia-settings=nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
alias gpg2="gpg2 --homedir $XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# disable dotnet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# java
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java -Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export _JAVA_AWT_WM_NONREPARENTING=1

# GPG key IDs
export GPG_ID_DEFAULT="1081FFE2B963ADB5BDCF4DA6D0E3BC76E355B6CC"
export GPG_ID_GIT="$GPG_ID_DEFAULT"
export GPG_ID_PASSWORD_STORE="A12ADDD26335FA960FE3C78A9FC7A0100BC4C971"

# secrets
[ -f "$HOME/.env" ] && . "$HOME/.env"

