var fs = require('fs');
var path = require('path');
var color = require('color');
var cp = require('child_process');
var exec = cp.execSync;

module.exports = colors => {
	var config = `${fs.readFileSync(path.join(process.env.HOME, "/.config/polybar/config"))}`;

	config = config.replace(/bg\s+=\s+.+/, `bg = ${colors.colors.color0}`)
	config = config.replace(/fg\s+=\s+.+/, `fg = ${colors.colors.color15}`)
	config = config.replace(/fg-alt\s+=\s+.+/, `fg-alt = ${colors.colors.color0}`)

	var mixer = a => color(colors.colors.color4).mix(color(colors.colors.color6), a).hex()

	config = config.replace(/shade1\s+=\s+.+/, `shade1 = ${mixer(0.00)}`);
	config = config.replace(/shade2\s+=\s+.+/, `shade2 = ${mixer(0.33)}`);
	config = config.replace(/shade3\s+=\s+.+/, `shade3 = ${mixer(0.66)}`);
	config = config.replace(/shade4\s+=\s+.+/, `shade4 = ${mixer(1.00)}`);

	config = config.replace(/shade-fg\s+=\s+.+/, `shade-fg = ${colors.special[color(colors.colors.color6).isDark() ? 'foreground' : 'background']}`);

	fs.writeFileSync(path.join(process.env.HOME, "/.config/polybar/config"), config)
	setTimeout(() => {
		exec("polybar-msg cmd restart", { stdio: 'inherit' });
	}, 1000);
}
