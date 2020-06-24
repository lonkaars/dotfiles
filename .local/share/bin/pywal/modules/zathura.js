var fs = require('fs');
var path = require('path');
var color = require('color');

module.exports = colors => {
	var config = `${fs.readFileSync(path.join(process.env.HOME, "/.config/zathura/zathurarc"))}`;

	config = config.replace(/set\sdefault-bg\s.+/,  `set default-bg ${String(color(colors.special.background).fade(0.08)).replace(/\s/g, '')}`)
	config = config.replace(/set\srecolor-lightcolor\s.+/, `set recolor-lightcolor ${String(color(colors.special.foreground).fade(1)).replace(/\s/g, '')}`)

	fs.writeFileSync(path.join(process.env.HOME, "/.config/zathura/zathurarc"), config)
}
