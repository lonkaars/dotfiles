#!/bin/node

var exec = require('child_process').execSync;
var fs = require('fs');
var path = require('path');
var Color = require('color');
var loader = require(__dirname + '/loader.js');

function makeReadable(color) {
	var hsl = Color(color).hsl().array();
	var lighter = Color({ h: hsl[0], s: hsl[1], l: 55 });
	var mixamount = Math.sqrt(1 - Math.min(1, Color(color).luminosity() * 20)) * 0.8;
	return Color(color).mix(lighter, mixamount).hex();
}

function set_wall(arguments) {
	var wall = arguments.find(i => i.includes('/'))
	exec(`wal -e -i ${wall} -n --backend haishoku`, { stdio: 'inherit' });

	// colors.json
	var colors = require(path.join(process.env.HOME, '/.cache/wal/colors.json'));

	// Produce readable colors
	colors.special.readableOn = {};
	colors.special.readable = {};
	for (let i = 0; i < 16; i++) {
		colors.special.readableOn[`color${i}`] = Color(colors.colors[`color${i}`]).isDark() ? colors.special.foreground : colors.special.background;
		colors.special.readable[`color${i}`] = makeReadable(colors.colors[`color${i}`]);
	}

	// lighten colorscheme if it's dark
	colors.special.autoReadable = colors.colors;
	var sum = 0;
	for (let i = 1; i < 7; i++) sum += Color(colors.colors[`color${i}`]).luminosity();
	if (sum / 6 <= 0.4) colors.special.autoReadable = colors.special.readable;

	// Set wallpaper
	exec(`feh --no-fehbg ${arguments.join(' ')}`)

	// Load modules
	loader(colors)
}

if (require.main === module) {
	var wallLocation = path.join(process.env.HOME, "/.local/share/bin/pywal/walls/duo");
	var walls = fs.readdirSync(wallLocation);
	var wall = walls[Math.floor(Math.random() * walls.length)]
	set_wall(['--bg-fill', '--no-xinerama', `${wallLocation}/${wall}`])
}

module.exports = set_wall;

// colorthief
// haishoku
// wal
// schemer2
// colorz
