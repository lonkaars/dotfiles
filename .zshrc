export ZSH="/home/$(whoami)/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh



# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Aliases
alias c="code-insiders"
alias chrome="chromium"
alias l="live-server"
alias r="ranger"
alias reload="sudo systemctl restart lightdm"
