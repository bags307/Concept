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

  createFilePath =
    rest.get 'http://localhost:8082/api/say?q='+req.query.q -> (req, res)->
    .then (data) ->
      createMy.semanticFilePath(data)









}
