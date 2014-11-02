express = require 'express'
php = require 'node-php'
path  = require 'path'
request = require 'request'
http = require 'http'

app = express()

app.use '/api/say', php.cgi('./speak.php')



app.listen 8082

###http.createServer (req,resp) ->
  queryObject = url.parse(req.url, true).query
  if req.url is 'http://localhost:1337/api/say' then request.get 'http://localhost:8082/api/say'.pipe(resp)###

console.log 'its up'
