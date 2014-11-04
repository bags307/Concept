fs = require 'fs-extra'
path = require 'path'
settings = require 'settings'
phrasePath = require './phrasePath.coffee'


module.exports =
  createPhraseDirectoryPath = (phrase, phraseDirectoryPath) ->
    makePath = phrasePath phrase
    basePath = settings.PROJECT_DIR
    console.log basePath
    combinedPath = basePath + '/voice/' + makePath
    console.log combinedPath
    phraseDirectoryPath = fs.mkdirs "#{combinedPath}"







###
foo = createPhraseDirectoryPath 'hello guys'
###


