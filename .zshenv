# xdg
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

# scripts
export PATH=~/.local/share/bin:$PATH
export PATH=~/.local/go/bin:$PATH

# restic
export RESTIC_PASSWORD_FILE=/mnt/g/resticpass
export RESTIC_REPOSITORY=/mnt/g

# other stuff
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

# cleanup
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export gnome_user_dir="$HOME"/.config/gnome/apps
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
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
export CONAN_USER_HOME="$XDG_CONFIG_HOME/conan"

