# FLOW::URL
Simple URL shortener built with Sinatra

## Features
* Map POST requests to a 6 character BASE64 hash
* Map :url parameters to shortened hash and redirect

## Installation
`bundle install`
`shotgun server.rb`

## Known Issues
* I haven't changed the port used in server.rb
* Not production ready
  * It will not work without localhost being the correct port

## TODO:
* [  ] Implement an ACTUAL database instead of a PStore object
* [  ] Integration with additional services
