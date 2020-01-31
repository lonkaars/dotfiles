var fs = require('fs');
var path = require('path');

var configPath = path.join(process.env.HOME, '/.config/picom.conf')
var config = fs.readFileSync(configPath).toString();

var r = /(#toggle\s*)(\d+\n)(corner-radius\s+\=\s+)(\d+)/

var toggleVal = Number(config.match(r)[2])
var currentVal = Number(config.match(r)[4])

var nextVal = currentVal == toggleVal ? 0 : toggleVal;

config = config.replace(r, `$1$2$3${nextVal}`)

fs.writeFileSync(configPath, config)