var fs = require('fs');
var path = require('path');
var color = require('color');

module.exports = colors => {
	var shade = color(colors.special.background).mix(color(colors.colors.color1), 0.2)
	fs.writeFileSync(path.join(process.env.HOME, '/.config/rofi/pywal.rasi'), `* {
	background-color: ${colors.special.background};
	text-color: ${colors.special.foreground};
	spacing: 0;
	width: 720px;
}

inputbar {
	border: 0 0 1px 0;
	children: [prompt, entry];
}

prompt {
	padding: 16px;
}

textbox {
	background-color: ${colors.special.background};
	border-color: ${colors.special.background};
	padding: 8px 16px;
}

entry {
	padding: 16px;
}

listview {
	cycle: false;
	margin: 0 0 -1px 0;
	scrollbar: false;
}

element {
	padding: 16px;
}

element selected {
	background-color: ${colors.colors.color6};
	text-color: ${colors.special.readableOn.color6};
}`)
}

