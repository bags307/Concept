### helperService methods for general manipulation ###
fs = require 'fs-extra'
module.exports = {

  semanticFilePath: (string) ->
    sPath = _path.join(_dirname, "#{string}")
    fs.mkdirs sPath, (err) ->
      if err then console.error(err)
      console.log "we're good"
}
