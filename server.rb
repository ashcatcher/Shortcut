require 'sinatra'

get '/:url' do
  "The URL is #{params[:url]}"
end

get '/' do
  "Send a POST request to register a new URL."
end

post '/' do
  "New URL added: #{params[:url]}\n"
end
