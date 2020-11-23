ZSH_THEME="norm"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	calc
	)

# oh-my-zsh
export ZSH="$HOME/.local/share/oh-my-zsh"
source $ZSH/oh-my-zsh.sh

compinit -D

# ueberzug
source "`ueberzug library`"

# aliases
alias wacom="xsetwacom set $(xsetwacom list devices | grep stylus | grep -oP --color=never "(?<=id\:\s)([0-9]*)") area 0 0 15200 4275"
alias reload="sudo systemctl restart lightdm"
alias rwall="node ~/.local/share/bin/pywal/wall.js"
alias cls="clear"
alias timesync="sudo ntpd -qg && sudo hwclock --systohc"
alias vim="nvim"
alias copy="xclip -selection c"
alias clipout="xclip -selection c -out"
alias ncp="ncmpcpp"
alias dnd="dragon-drag-and-drop -x"
alias adda="git add -A"
alias first="git commit -m \"first commit\""
alias les="less"
alias scdl="scdl --onlymp3 -l"
alias screenrecord='giph -s -b 4 -c 255,255,255 $(date +"$HOME/%Y-%m-%d_%H-%M-%S.mp4")'

# one letters
alias r="ranger"
alias v="nvim"
alias l="live-server"
alias m="make"
alias y="yay"
alias n="ncmpcpp"

# functions
function b64d { echo $1 | base64 -d }
function genplaylist { find $1 -name "*.flac" | sort -V > ../playlists/$1.m3u }
function bgcol { convert -size 1x1 xc:$1 /tmp/bgcol.png && feh --bg-tile /tmp/bgcol.png }

# cursors
alias cursorbl="printf '\033[1 q'"
alias cursorul="printf '\033[4 q'"
alias cursorbar="printf '\033[6 q'"

# dircolors
eval "`dircolors ~/.config/dircolors`"

# cleanup
rm -rf ~/.Wurst\ encryption ~/.xsession-errors ~/.xsession-errors.old ~/.zshrc.zwc ~/.lesshst ~/.lyrics ~/.android ~/.zcalc_history .git-credentials .node_repl_history .python_history
alias nvidia-settings=nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
alias gpg2="gpg2 --homedir $XDG_DATA_HOME/gnupg"

