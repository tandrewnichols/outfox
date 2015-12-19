sinon = require 'sinon'
proxyquire = require('proxyquire').noCallThru()

describe 'readUtf', ->
  Given -> @fs =
    readFile: sinon.stub()
    readFileSync: sinon.stub()

  Given -> @subject = proxyquire '../../lib/readUtf',
    fs: @fs

  describe '.readFile', ->
    When -> @subject.readFile 'file', 'cb'
    Then -> @fs.readFile.calledWith('file', { encoding: 'utf8' }, 'cb').should.be.true()

  describe '.readFileSync', ->
    When -> @subject.readFileSync 'file'
    Then -> @fs.readFileSync.calledWith('file', { encoding: 'utf8' }).should.be.true()
