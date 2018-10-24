require 'sinatra'
require 'base64'
require 'pstore'

get '/:url' do
  original = ShortURL.read(params[:url])

  if original
    redirect 'http://' + ShortURL.read(params[:url])
  else
    "Sorry, URL not found."
  end
end

get '/' do
  'Send a POST request to register a new URL.'
  erb :shotcut
end

post '/' do
  url = generate_short_url(params[:url])

  "New URL added: #{params[:url]}"\
    "\nYour shortened URL is #{url}\n"
end

LETTERS = Array('a'..'z')
def generate_short_url(original)

  ShortURL.save(Base64.encode64(original)[0..6], original)

  # Array.new(6) { LETTERS.sample }.join #Alternative Hashing Method

  'localhost:4567/' + Base64.encode64(original)[0..6]
end

# logic behind persistence of shortened URL's
class ShortURL
  def self.save(encoded, original)
    store.transaction { |t| store[encoded] = original  }
  end

  def self.read(encoded)
    store.transaction {  store[encoded] }
  end

  def self.store
    @store ||= PStore.new('shortened_urls.db')
  end
end
