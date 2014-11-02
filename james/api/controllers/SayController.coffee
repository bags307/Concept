 # SayController
 #
 # @description :: Server-side logic for managing says
 # @help        :: See http://links.sailsjs.org/docs/controllers

http = require 'http'
request = require 'request'
rest = require 'restless'
play = require 'play-audio'
fs = require 'fs'


module.exports = {

phrase: (req, res) ->
  foo = req.query.q
  rest.get 'http://localhost:8082/api/say?q='+req.query.q, (error, data)->
    soundUrl = "#{data}"
    splitSoundUrl = soundUrl
    filePath = parseMy.filenameToPath(foo)
    console.log filePath





}
