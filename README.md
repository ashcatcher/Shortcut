# Shortcut
URL shortener built with Sinatra

## Features
* Map POST requests to a 6 character BASE64 hash
* Map :url parameters to shortened hash and redirect
* Front-end ERB template

## Installation

```ruby
bundle install

## Known Issues
When passing a URL that includes http:// the db copy instead returns http// (breaking it)

## TODO:
* [ ] Database upgrade.
* [ ] Responsive Design
* [ ] Eliminate redirect
* [ ] Remember me
