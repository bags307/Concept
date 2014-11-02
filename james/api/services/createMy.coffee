### helperService methods for general manipulation ###
fs = require 'fs-extra'
path = require 'path'

module.exports = {

  semanticFilePath: (string) ->
    sPath = path.join('voice/', "#{string}")
    fs.mkdirs __dirname + "../../" + sPath, (err) ->
      if err then console.error(err)
      console.log "I have made the requested directories"
}
