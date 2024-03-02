#!/bin/sh
. ~/.profile

# make current environment available to systemd user units
systemctl --user import-environment $(export | cut -d= -f1)

xrdb -override "$XDG_CONFIG_HOME/X11/base"

# https://github.com/swaywm/sway/wiki#gtk-applications-take-20-seconds-to-start
dbus-update-activation-environment --systemd DISPLAY

exec i3

