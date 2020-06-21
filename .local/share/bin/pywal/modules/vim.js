var fs = require('fs');
var path = require('path');
var color = require('color');
var cp = require('child_process');
var exec = cp.execSync;

module.exports = colors => {
	var mixer = color(colors.special.background);
	var config = [
		`hi! Normal guibg=${colors.special.background} ctermbg=NONE`,
		`hi! EndOfBuffer guibg=${colors.special.background} ctermbg=NONE`,
		`hi! CocInfoFloat guibg=${mixer.lighten(1.0).hex()} ctermbg=NONE`,
		``,
		`let s:bg = [ '${colors.special.background}', 'NONE' ]`,
		`let s:fg = [ '${colors.special.foreground}', 'NONE' ]`,

		`let s:bg1 = [ '${mixer.lighten(0.2).hex()}', 'NONE' ]`,
		`let s:bg2 = [ '${mixer.lighten(0.4).hex()}', 'NONE' ]`,
		`let s:bg3 = [ '${mixer.lighten(0.6).hex()}', 'NONE' ]`,
		`let s:bg4 = [ '${mixer.lighten(0.8).hex()}', 'NONE' ]`,
		`let s:bg5 = [ '${mixer.lighten(1.0).hex()}', 'NONE' ]`,

		`let s:color0 = [ '${colors.colors.color0}', 'NONE' ]`,
		`let s:color1 = [ '${colors.colors.color1}', 'NONE' ]`,
		`let s:color2 = [ '${colors.colors.color2}', 'NONE' ]`,
		`let s:color3 = [ '${colors.colors.color3}', 'NONE' ]`,
		`let s:color4 = [ '${colors.colors.color4}', 'NONE' ]`,
		`let s:color5 = [ '${colors.colors.color5}', 'NONE' ]`,
		`let s:color6 = [ '${colors.colors.color6}', 'NONE' ]`,
		`let s:color7 = [ '${colors.colors.color7}', 'NONE' ]`,
		`let s:color8 = [ '${colors.colors.color8}', 'NONE' ]`,
		`let s:color9 = [ '${colors.colors.color9}', 'NONE' ]`,
		`let s:color10 = [ '${colors.colors.color10}', 'NONE' ]`,
		`let s:color11 = [ '${colors.colors.color11}', 'NONE' ]`,
		`let s:color12 = [ '${colors.colors.color12}', 'NONE' ]`,
		`let s:color13 = [ '${colors.colors.color13}', 'NONE' ]`,
		`let s:color14 = [ '${colors.colors.color14}', 'NONE' ]`,
		`let s:color15 = [ '${colors.colors.color15}', 'NONE' ]`,

		`let s:color0readable = [ '${colors.special.readableOn.color0}', 'NONE' ]`,
		`let s:color1readable = [ '${colors.special.readableOn.color1}', 'NONE' ]`,
		`let s:color2readable = [ '${colors.special.readableOn.color2}', 'NONE' ]`,
		`let s:color3readable = [ '${colors.special.readableOn.color3}', 'NONE' ]`,
		`let s:color4readable = [ '${colors.special.readableOn.color4}', 'NONE' ]`,
		`let s:color5readable = [ '${colors.special.readableOn.color5}', 'NONE' ]`,
		`let s:color6readable = [ '${colors.special.readableOn.color6}', 'NONE' ]`,
		`let s:color7readable = [ '${colors.special.readableOn.color7}', 'NONE' ]`,
		`let s:color8readable = [ '${colors.special.readableOn.color8}', 'NONE' ]`,
		`let s:color9readable = [ '${colors.special.readableOn.color9}', 'NONE' ]`,
		`let s:color10readable = [ '${colors.special.readableOn.color10}', 'NONE' ]`,
		`let s:color11readable = [ '${colors.special.readableOn.color11}', 'NONE' ]`,
		`let s:color12readable = [ '${colors.special.readableOn.color12}', 'NONE' ]`,
		`let s:color13readable = [ '${colors.special.readableOn.color13}', 'NONE' ]`,
		`let s:color14readable = [ '${colors.special.readableOn.color14}', 'NONE' ]`,
		`let s:color15readable = [ '${colors.special.readableOn.color15}', 'NONE' ]`,

		`let s:none = [ 'NONE', 'NONE' ]`,
		`let s:test = [ '#ff00ff', 'NONE' ]`,
		``
	].join('\n') + '\n';

	fs.writeFileSync(path.join(process.env.HOME, "/.config/nvim/pywal/colors.vim"), config)
	exec(`cat ${path.join(process.env.HOME, '/.config/nvim/pywal/colors.vim')} ${path.join(process.env.HOME, '/.config/nvim/pywal/base.vim')} > ${path.join(process.env.HOME, '/.config/nvim/pywal/pywal.vim')}`)
}
