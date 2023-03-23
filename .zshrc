ZSH_THEME="norm"
zstyle ':omz:update' mode reminder

plugins=(
	git
	zsh-syntax-highlighting
	)

# oh-my-zsh
export ZSH="$HOME/.local/share/oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# esp8266 rtos sdk
export IDF_PATH="/opt/ESP8266_RTOS_SDK/"

# shift-tab fix
bindkey '^[[Z' reverse-menu-complete

compinit -D

# ueberzug
source "`ueberzug library`"

# fontpreview
export FONTPREVIEW_BG_COLOR=$(xrdb -query | grep background | cut -f2)
export FONTPREVIEW_FG_COLOR=$(xrdb -query | grep foreground | cut -f2)

# aliases
alias reload="sudo systemctl restart lightdm"
alias cls="clear"
alias timesync="sudo ntpd -qg && sudo hwclock --systohc"
alias vim="nvim"
alias copy="xclip -selection c"
alias clipout="xclip -selection c -out"
alias ncp="ncmpcpp"
alias dnd="dragon-drag-and-drop -a -x"
alias scdl="scdl --onlymp3 -l"
alias screenrecord='giph -f 60 -s -b 4 -c 255,255,255 $(date +"$HOME/%Y-%m-%d_%H-%M-%S.mp4")'
alias deemix="deemix -b FLAC -p ~/dl"
alias docxtopdf="soffice --headless --convert-to pdf"
alias fd='cd "`find . -type d | fzf`"'

function = () { python3 -c "from math import *; deg = pi / 180; print($*)" }
aliases[=]="noglob ="
alias 16="python3 -c 'import sys;print(f\"{int(sys.stdin.read().strip()):x}\")'"

# one letters
alias r="ranger"
alias v="nvim"
alias l="less"
alias m="neomutt"
alias mk="make"
alias y="yay"
alias n="ncmpcpp"
alias c="khal"

# the fuck
eval $(thefuck --alias)

# bat
alias bat="bat -pp --theme=base16"

# cleanup
rm -rf ~/.xsession-errors ~/.xsession-errors.old ~/.zshrc.zwc ~/.lesshst ~/.lyrics ~/.android ~/.zcalc_history .git-credentials .node_repl_history .python_history
alias nvidia-settings=nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
alias gpg2="gpg2 --homedir $XDG_DATA_HOME/gnupg"

