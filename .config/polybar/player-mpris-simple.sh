#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ] || [ "$player_status" = "Paused" ]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title)" | awk -v len=60 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }'
else
    echo ""
fi
