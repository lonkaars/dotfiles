var fs = require('fs');
var modules = fs.readdirSync(__dirname + "/modules");
var mods = [];
modules.forEach(module => mods.push(require(__dirname + "/modules/" + module)))
module.exports = colors => mods.forEach(mod => mod(colors))
