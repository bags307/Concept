// Generated by CoffeeScript 1.8.0
(function() {
  var fs, http, play, request, rest;

  http = require('http');

  request = require('request');

  rest = require('restless');

  play = require('play-audio');

  fs = require('fs');

  module.exports = {
    phrase: function(req, res) {
      var createFilePath;
      return createFilePath = rest.get('http://localhost:8082/api/say?q=' + req.query.q(function() {
        return function(req, res) {};
      })).then(function(data) {
        return createMy.semanticFilePath(data);
      });
    }
  };

}).call(this);

//# sourceMappingURL=SayController.js.map
