#!/bin/sh
[ "$mode" == "light" ] && {
	export accent="$color15"
	export accent_text="$color0"
}
[ "$mode" == "dark" ] && {
	export accent="$(mix_rgb $bg $color0 0.5)"
	export accent_text="$fg"
}

