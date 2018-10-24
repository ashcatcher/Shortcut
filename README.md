# Shortcut
URL shortener built with Sinatra

## Features
* Map POST requests to a 6 character BASE64 hash
* Map :url parameters to shortened hash and redirect
* Front-end ERB template

## Installation

```ruby
bundle install
shotgun server.rb```
## Known Issues
When passing a URL that includes http:// the db copy instead returns http// (breaking it)

## TODO:
* [ ] Ensure unique-ness of hash (does not already exist in the database)
* [ ] Implement Logs
* [ ] Implement a Database
* [ ] Responsive Design
* [ ] Front-End improvements
* [ ] Switch to live-view of short URL's in lieu of redirect
* [ ] Session Cookie
