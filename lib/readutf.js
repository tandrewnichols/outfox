var fs = require('fs');

exports.readFile = function(file, cb) {
  fs.readFile(file, { encoding: 'utf8' }, cb);
};

exports.readFileSync = function(file) {
  fs.readFileSync(file, { encoding: 'utf8' });
};
