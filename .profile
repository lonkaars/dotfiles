#!/bin/sh
#
# this file should only contain posix-compliant shell customizations.
# shell-specific customizations should be done in the respective shell's
# profile or init file (e.g. .zshrc, .bash_profile, etc.)

# aliases
alias cls="clear"
alias vim="nvim"
alias copy="xclip -selection c"
alias dnd="dragon-drag-and-drop -a -x"
alias mk="make"

# one letters
alias r="ranger"
alias v="nvim"
alias m="neomutt"
alias y="yay"
alias n="ncmpcpp"
alias c="khal"

# "functions"
alias reload="sudo systemctl restart lightdm"
alias screenrecord='giph -f 60 -s -b 4 -c 255,255,255 $(date +"$HOME/%Y-%m-%d_%H-%M-%S.mp4")'

# fontpreview
if [ -n "$DISPLAY" ]; then
	export FONTPREVIEW_BG_COLOR="$(xrdb -query | grep background | cut -f2)"
	export FONTPREVIEW_FG_COLOR="$(xrdb -query | grep foreground | cut -f2)"
fi

# bat
alias bat="bat -pp --theme=base16"

# force colorterm
export COLORTERM="truecolor"

# xdg base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# script locations
export PATH="$HOME/.local/share/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
# export PATH="/opt/f4pga/xc7/conda/bin:$PATH"

# other stuff
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND="find ."
export FZF_DEFAULT_OPTS="--color=16"
export GOPATH="$HOME/.local/go"

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

# disable dotnet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# java
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java -Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export _JAVA_AWT_WM_NONREPARENTING=1

# secrets
[ -f "$HOME/.env" ] && . "$HOME/.env"
