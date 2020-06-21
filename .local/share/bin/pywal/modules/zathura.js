var fs = require('fs');
var path = require('path');
var color = require('color');

module.exports = colors => {
	var config = `${fs.readFileSync(path.join(process.env.HOME, "/.config/zathura/zathurarc"))}`;

	config = config.replace(/set\srecolor-lightcolor\s\".+\"/,  `set recolor-lightcolor "${colors.colors.color0}"`)
	config = config.replace(/set\srecolor-darkcolor\s\".+\"/, `set recolor-darkcolor "${colors.colors.color15}"`)

	fs.writeFileSync(path.join(process.env.HOME, "/.config/zathura/zathurarc"), config)
}
