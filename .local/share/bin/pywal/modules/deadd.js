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
		`background = ${String(color(colors.special.background).rgb()).replace(')', ', 0.6)').replace('rgb', 'rgba')}`,
		`notiBackground = ${String(color(colors.special.background).rgb()).replace(')', ', 0.6)').replace('rgb', 'rgba')}`,
		`notiColor = ${colors.special.foreground}`,
		`critical = ${colors.colors.color6}`,
		`criticalColor = ${colors.special.background}`,
		`criticalInCenter = rgba(155, 0, 20, 0.5)`,
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
