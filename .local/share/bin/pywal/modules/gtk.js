var exec = require("child_process").execSync;

module.exports = colors => {
	exec("wpg -i pywal.png /home/$(whoami)/.cache/wal/colors.json && wpg -ns pywal.png", { stdio: "inherit" })
}
