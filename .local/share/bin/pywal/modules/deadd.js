var fs = require('fs');
var path = require('path');
var color = require('color');
var cp = require('child_process');
var exec = cp.execSync;

module.exports = colors => {
	var config = [
		"[notification-center-notification-popup]",
		"notiDefaultTimeout = 7500",
		"distanceTop = 50",
		"distanceRight = 50",
		"distanceBetween = 20",
		"width = 300",
		"monitor = 0",
		"",
		"[colors]",
		`background = ${color(colors.special.background).rgb()}`,
		`notiBackground = ${color(colors.special.background).rgb()}`,
		`notiColor = ${colors.special.foreground}`,
		`critical = ${colors.colors.color6}`,
		`criticalColor = ${colors.special.background}`,
		`criticalInCenter = rgb(155, 0, 20)`,
		`criticalInCenterColor = ${colors.special.foreground}`,
		`buttonColor = ${colors.special.foreground}`,
		`buttonHover = rgba(0, 20, 20, 0.2)`,
		`buttonHoverColor = ${colors.special.foreground}`,
		`buttonBackground = transparent`,
		`labelColor = ${colors.special.foreground}`
	].join('\n')

	fs.writeFileSync(path.join(process.env.HOME, "/.config/deadd/deadd.conf"), config)
	exec("systemctl --user restart deadd-notification-center.service")
}