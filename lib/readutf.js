var fs = require('fs');
var splice = require('safe-splice');

exports.readFile = function(file, cb) {
  fs.readFile(file, { encoding: 'utf8' }, cb);
};

exports.readFileSync = function(file) {
  fs.readFileSync(file, { encoding: 'utf8' });
};
