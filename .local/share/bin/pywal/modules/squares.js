var chalk = require('chalk');

module.exports = colors => {
	var message = []

	message.push(`Using wallpaper ${colors.wallpaper}\n`);

	message.push("New color scheme:")

	var line = "";
	for(let i = 0; i < 8; i++) {line += chalk.bgHex(colors.colors[`color${i}`])("     ")}
	message.push(...Array(2).fill(line))
	line = "";
	for(let i = 0; i < 8; i++) {line += chalk.bgHex(colors.special.readable[`color${i}`])("     ")}
	message.push(...Array(2).fill(line))


	console.log(message.join('\n'))
}
