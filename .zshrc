# xdg to be safe :)
XDG_CONFIG_HOME="$HOME"/.config
XDG_CACHE_HOME="$HOME"/.cache
XDG_DATA_HOME="$HOME"/.local/share

ZSH_THEME="norm"

export ZSH="$HOME/.local/share/oh-my-zsh"
export ADOTDIR="$XDG_CONFIG_HOME"/antigen

source ~/.config/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle arzzen/calc.plugin.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

source $ZSH/oh-my-zsh.sh

# scripts
export PATH=~/.local/share/bin:$PATH
export PATH=~/.local/go/bin:$PATH

# restic
export RESTIC_PASSWORD_FILE=/mnt/g/resticpass
export RESTIC_REPOSITORY=/mnt/g

# environment variables
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='find .'
export FZF_DEFAULT_OPTS="--color=16"
export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons
export GOPATH=$HOME/.local/go
export ETESYNC_URL="https://superesc:9443"

# js-beautify
export jsbeautify_end_with_newline=true
export jsbeautify_brace_style="preserve-inline"
export jsbeautify_indent_with_tabs=true
export jsbeautify_wrap_line_length=70

# node certificate settings
export NODE_EXTRA_CA_CERTS=/usr/share/ca-certificates/bitwarden.crt

# NVM
source /usr/share/nvm/init-nvm.sh

# ueberzug
source "`ueberzug library`"

# aliases
alias chrome="chromium"
alias wacom="xsetwacom set $(xsetwacom list devices | grep stylus | grep -oP --color=never "(?<=id\:\s)([0-9]*)") area 0 0 15200 4275"
alias reload="sudo systemctl restart lightdm"
alias rwall="node ~/.local/share/bin/pywal/wall.js"
alias cls="clear"
alias lowerpolybar="xdo lower -n Polybar -n tray && xdo lower -N Polybar"
alias timesync="sudo ntpd -qg && sudo hwclock --systohc"
alias vim="nvim"
alias copy="xclip -selection c"
alias sctl="systemctl"
alias ncp="ncmpcpp"
alias dnd="dragon-drag-and-drop -x"
alias adda="git add -A"
alias first="git commit -m \"first commit\""
alias les="less"
alias scdl="scdl --onlymp3 -l"
alias screenrecord='giph -s -b 4 -c 255,255,255 $(date +"$HOME/%Y-%m-%d_%H-%M-%S.mp4")'
function b64d { echo $1 | base64 -d }
function genplaylist { find $1 -name "*.flac" | sort -V > playlists/$1.m3u }
alias r="ranger"
alias v="nvim"
alias l="live-server"
alias m="make"
alias y="yay"
alias n="ncmpcpp"

# cursors
alias cursorbl="printf '\033[1 q'"
alias cursorul="printf '\033[4 q'"
alias cursorbar="printf '\033[6 q'"

# dircolors
eval "`dircolors ~/.config/dircolors`"

# cleanup
rm -rf ~/.Wurst\ encryption ~/.xsession-errors ~/.xsession-errors.old ~/.zcompdump* ~/.zshrc.zwc ~/.lesshst ~/.lyrics ~/.android ~/.zcalc_history .git-credentials .node_repl_history .python_history
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export CARGO_HOME="$XDG_DATA_HOME"/cargo
alias nvidia-settings=nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
export gnome_user_dir="$HOME"/.config/gnome/apps
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
alias gpg2="gpg2 --homedir $XDG_DATA_HOME/gnupg"
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NVM_DIR="$XDG_DATA_HOME"/nvm
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export STACK_ROOT="$XDG_DATA_HOME"/stack
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
alias gpg2="gpg2 --homedir $XDG_DATA_HOME/gnupg"
export CONAN_USER_HOME="$XDG_CONFIG_HOME/conan"

