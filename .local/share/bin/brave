#!/bin/sh

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
BRAVE_USER_FLAGS_FILE="$XDG_CONFIG_HOME/brave-flags.conf"
if [[ -f $BRAVE_USER_FLAGS_FILE ]]; then
    USER_FLAGS="$(cat $BRAVE_USER_FLAGS_FILE | sed 's/#.*//')"
fi

/usr/bin/brave $@ $USER_FLAGS
