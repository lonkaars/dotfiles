var fs = require('fs');
var path = require('path');
var color = require('color');
var cp = require('child_process');
var exec = cp.execSync;

var i3confpath = path.join(process.env.HOME, '/.config/i3/config');

function makeconfigentries(client) {
	var out = "";
	for(var key in client) {
		out += `client.${key} ${client[key].join(' ')}\n`
	}
	return out
}

function patcher(newcolors) {
	var conf = fs.readFileSync(i3confpath).toString();
	conf = conf.replace(/(#\s*pywal-start).*(#\s*pywal-end)/gs, [
		"# pywal-start",
		newcolors,
		"# pywal-end"
	].join('\n'))
	fs.writeFileSync(i3confpath, conf);
}

module.exports = colors => {
	patcher(makeconfigentries({
		"focused": [
			colors.colors.color6,
			colors.special.background,
			colors.special.foreground,
			colors.colors.color6,
			color(colors.colors.color8).mix(color(colors.colors.color6), 0.4).hex()
		],
		"focused_inactive": [
			color(colors.colors.color8).lighten(0.2).hex(),
			colors.colors.color8,
			colors.special.foreground,
			color(colors.special.background).lighten(0.2).hex(),
			colors.special.background
		],
		"unfocused": [
			colors.special.background,
			color(colors.special.background).darken(0.2).hex(),
			color(colors.special.foreground).darken(0.2).hex(),
			colors.special.background,
			color(colors.special.background).darken(0.2).hex()
		],
		"urgent": [
			colors.special.background,
			'#e95678',
			colors.special.foreground,
			'#e95678',
			'#e95678'
		],
		"placeholder": [
			'#000000',
			'#0c0c0c',
			colors.special.foreground,
			'#000000',
			'#0c0c0c'
		],
		"background": [ colors.special.foreground ]
	}))
	exec("i3-msg reload")
}

