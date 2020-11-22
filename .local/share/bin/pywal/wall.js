var fs = require('fs');
var path = require('path');
var args = process.argv;
var exec = require('child_process').execSync;

var collection = fs.readdirSync(path.join(__dirname, "walls/"));
var walls = Array.from({ length: 2 /* # of screens */ }, () => collection[Math.floor(Math.random() * collection.length)]);

while (walls[0] == walls[1]) walls[1] = collection[Math.floor(Math.random() * collection.length)];

walls = walls.map(i => path.join(__dirname, `walls/${i}`))

var args = ['--bg-fill', JSON.stringify(walls[0])];
if (walls.length == 1) args.push('--no-xinerama');
if (walls.length == 2) args.push('--bg-fill', JSON.stringify(walls[1]));

// jswal(args);
exec(`feh --no-fehbg ${args.join(' ')}`)
