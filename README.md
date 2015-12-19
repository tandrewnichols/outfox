[![Build Status](https://travis-ci.org/tandrewnichols/readUtf.png)](https://travis-ci.org/tandrewnichols/readUtf) [![downloads](http://img.shields.io/npm/dm/readUtf.svg)](https://npmjs.org/package/readUtf) [![npm](http://img.shields.io/npm/v/readUtf.svg)](https://npmjs.org/package/readUtf) [![Code Climate](https://codeclimate.com/github/tandrewnichols/readUtf/badges/gpa.svg)](https://codeclimate.com/github/tandrewnichols/readUtf) [![Test Coverage](https://codeclimate.com/github/tandrewnichols/readUtf/badges/coverage.svg)](https://codeclimate.com/github/tandrewnichols/readUtf) [![dependencies](https://david-dm.org/tandrewnichols/readUtf.png)](https://david-dm.org/tandrewnichols/readUtf)

# readUtf

A thin wrapper around fs.readFile that automatically sets the encoding to utf8 on your behest

## Installation

`npm install --save readUtf`

## Summary

I typically forget that "utf8" is not the default encoding when reading in a file. This wrapper sets `{ encoding: 'utf8' }` on `fs.readFile` and `fs.readFileSync` so you can pass only a filename or filename and callback.

## Usage

```
var utf = require('readUtf');
utf.readFile('./lib/filename.txt', function(err, contents) {
  // "contents" is a string
});
var contents = utf.readFileSync('./lib/other-thing.ext'); // Also a string
```

## Contributing

Please see [the contribution guidelines](CONTRIBUTING.md).
