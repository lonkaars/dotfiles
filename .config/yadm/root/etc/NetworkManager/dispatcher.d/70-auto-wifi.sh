#!/bin/sh

export LANG=C

interface="$1"
action="$2"

connectivity="$(nmcli networking connectivity)"
interface_type="$(nmcli -g GENERAL.TYPE device show "$interface")"
interface_state="$(nmcli -g GENERAL.STATE device show "$interface" | grep -o '^[0-9]\+')"

if [ "$action" = "down" ] && [ "$connectivity" = "none" ]; then
	nmcli radio wifi on
	exit
fi

if [ "$action" = "up" ] && [ "$interface_type" == "ethernet" ] && [ "$interface_state" = "100" ]; then
	nmcli radio wifi off
	exit
fi

