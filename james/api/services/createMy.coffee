### helperService methods for general manipulation ###
fs = require 'fs-extra'
path = require 'path'
download = require 'simpledownload'
iPromise = require 'promisy'

module.exports =

  semanticFilePath: (string, result) ->
    sPath = path.join('voice/', "#{string}")

    result = "../../#{sPath}"

    fs.mkdirs("../../" + sPath) (err) ->
      if err then console.error(err)

      else -> callback(result)

    console.log "I have made the requested directories"


  phraseDownload: (string) ->
    iPromise (next) ->
      semanticFilePath(string)
      console.log "first"


download "http://194.158.21.231:8081/MESSAGES/  +
012099097112101108097071114111117112/ +
AcapelaGroup_WebDemo_HTML/sounds/94327397_d7e5fc3960987.mp3', __dirname + '/test.mp3", (err) ->
  console.log 'error'


