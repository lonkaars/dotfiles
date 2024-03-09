#!/bin/sh
hex_to_rgb_array() { pastel format rgb "$1" | cut -c4- | tr '()' '[]' ; }
mix_rgb() { pastel mix --colorspace=RGB --fraction="$3" "$1" "$2" | pastel format hex ; }

