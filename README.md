# FLOW::URL
Simple URL shortener built with Sinatra

## Features
* Map POST requests to a 6 character BASE64 hash
* Map :url parameters to shortened hash and redirect

## Installation
`bundle install`
`shotgun server.rb`

## Known Issues

## TODO:
* [  ] Ensure unique-ness of hash (does not already exist in the database)
* [  ] database adapter integration (ActiveRecord, Sequel, etc.)
* [  ] HTTP front-end
  * [  ] Form
  * [  ] Template
    * [  ] Add .erb Views
  * [  ] Navigation
  * [  ] Mobile Interface
  * [  ] Account Administration Page
* [  ] Session Cookie
* [  ] User Accounts
