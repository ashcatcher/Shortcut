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
* [ ] Ensure unique-ness of hash (does not already exist in the database)
* [ ] Implement a Database
  * [ ] Add a Database Adapter
  * [ ] Integration with Database Tables
* [.] HTTP front-end
  * [ ] Form
  * [ ] Bootstrap CSS
  * [X] Template
    * [X] Add .erb Views
  * [ ] Navigation
  * [ ] Background Image
    * [X] Add Background Image
    * [ ] Responsive Background Images
  * [ ] Mobile Interface
  * [ ] Account Administration Page
* [ ] Session Cookie
* [ ] User Accounts
