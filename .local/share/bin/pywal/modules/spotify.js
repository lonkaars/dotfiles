var fs = require('fs');
var path = require('path');
var color = require('color');
var ini = require('ini');
var cp = require('child_process');
var exec = cp.execSync;

module.exports = colors => {
	var shade = color(colors.colors.color0).mix(color(colors.colors.color1), 0.2)

	var pywal = {
		shade0: shade.hex(),
		shade1: shade.lighten(0.2).hex(),
		shade2: shade.lighten(0.3).hex(),
		shade3: shade.lighten(0.4).hex(),
		shade4: shade.lighten(0.4).saturate(1.1).hex(),
		shade5: shade.lighten(0.7).saturate(0.9).hex(),
		bg: colors.special.background,
		color0: colors.colors.color0,
		color1: colors.colors.color1,
		color2: colors.colors.color2,
		color3: colors.colors.color3,
		color4: colors.colors.color4,
		color5: colors.colors.color5,
		color6: colors.colors.color6,
		color7: colors.colors.color7,
		color8: colors.colors.color8,
		color9: colors.colors.color9,
		color10: colors.colors.color10,
		color11: colors.colors.color11,
		color12: colors.colors.color12,
		color13: colors.colors.color13,
		color14: colors.colors.color14,
		color15: colors.colors.color15,

		color0_readableOn: colors.special.readableOn.color0,
		color1_readableOn: colors.special.readableOn.color1,
		color2_readableOn: colors.special.readableOn.color2,
		color3_readableOn: colors.special.readableOn.color3,
		color4_readableOn: colors.special.readableOn.color4,
		color5_readableOn: colors.special.readableOn.color5,
		color6_readableOn: colors.special.readableOn.color6,
		color7_readableOn: colors.special.readableOn.color7,
		color8_readableOn: colors.special.readableOn.color8,
		color9_readableOn: colors.special.readableOn.color9,
		color10_readableOn: colors.special.readableOn.color10,
		color11_readableOn: colors.special.readableOn.color11,
		color12_readableOn: colors.special.readableOn.color12,
		color13_readableOn: colors.special.readableOn.color13,
		color14_readableOn: colors.special.readableOn.color14,
		color15_readableOn: colors.special.readableOn.color15,

		color0_readable: colors.special.readable.color0,
		color1_readable: colors.special.readable.color1,
		color2_readable: colors.special.readable.color2,
		color3_readable: colors.special.readable.color3,
		color4_readable: colors.special.readable.color4,
		color5_readable: colors.special.readable.color5,
		color6_readable: colors.special.readable.color6,
		color7_readable: colors.special.readable.color7,
		color8_readable: colors.special.readable.color8,
		color9_readable: colors.special.readable.color9,
		color10_readable: colors.special.readable.color10,
		color11_readable: colors.special.readable.color11,
		color12_readable: colors.special.readable.color12,
		color13_readable: colors.special.readable.color13,
		color14_readable: colors.special.readable.color14,
		color15_readable: colors.special.readable.color15
	}

	var colorini = ini.parse(fs.readFileSync(path.join(process.env.HOME, '/.config/spicetify/Themes/Loekaars/color.ini')));

	colorini.main_fg = pywal.color15
	colorini.secondary_fg = color(pywal.color15).darken(0.1).hex()
	colorini.main_bg = pywal.bg
	colorini.sidebar_and_player_bg = pywal.bg
	colorini.cover_overlay_and_shadow = pywal.bg
	colorini.indicator_fg_and_button_bg = pywal.color6
	colorini.pressing_fg = pywal.color6
	colorini.slider_bg = pywal.shade2
	colorini.sidebar_indicator_and_hover_button_bg = pywal.color6
	colorini.scrollbar_fg_and_selected_row_bg = pywal.shade1
	colorini.pressing_button_fg = pywal.color15
	colorini.pressing_button_bg = pywal.shade3
	colorini.selected_button = pywal.color6
	colorini.miscellaneous_bg = pywal.shade1
	colorini.miscellaneous_hover_bg = pywal.color6
	colorini.preserve_1 = pywal.color15

	for(var key in colorini) {
		colorini[key] = String(colorini[key]).substr(1)
	}

	fs.writeFileSync(path.join(process.env.HOME, '/.config/spicetify/Themes/Loekaars/color.ini'), ini.stringify(colorini, {
		section: "Base"
	}))

	exec("spicetify update")
	exec("pgrep spotify && spicetify restart || echo")
}
