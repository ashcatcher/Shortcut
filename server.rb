require 'sinatra'
require 'base64'
require 'pstore'

get '/:url' do
end

get '/' do
  'Send a POST request to register a new URL.'
end

post '/' do
  url = generate_short_url(params[:url])

  "New URL added: #{params[:url]}"+\
  "\nYour shortened URL is #{url}\n"
end

LETTERS = Array('a'..'z')
def generate_short_url(original)
  # Array.new(6) { LETTERS.sample }.join
  "localhost:4567/" + Base64.encode64(original)[0..6]
end
