var fs = require('fs');
var path = require('path');
var args = process.argv;
var exec = require('child_process').execSync;

var dir = Math.random() >= 0.9 ? 1 : 0;

var collections = fs.readdirSync(path.join(__dirname, `/walls/${['mono', 'duo'][dir]}`));
var collectionName = collections[Math.floor(Math.random() * collections.length)];
var collection = fs.readdirSync(path.join(__dirname, `/walls/${['mono', 'duo'][dir]}/${collectionName}`));
var walls = Array.from({ length: Math.abs(dir - 2) }, () => collection[Math.floor(Math.random() * collection.length)]);

while (walls.length == 2 && walls[0] == walls[1]) walls[1] = collection[Math.floor(Math.random() * collection.length)];

walls = walls.map(i => path.join(__dirname, `/walls/${['mono', 'duo'][dir]}/${collectionName}/${i}`))

var args = ['--bg-fill', walls[0]];
if (walls.length == 1) args.push('--no-xinerama');
if (walls.length == 2) args.push('--bg-fill', walls[1]);

// jswal(args);
exec(`feh --no-fehbg ${args.join(' ')}`)
