%w[sinatra base64 pstore].each{ |gem| require gem }
get '/' do
  @title = 'Shortcut'
  @debug = false 
  erb :shortcut
end

get '/debug' do
  @title = 'Shortcut|Debug'
  @debug = true
  erb :shortcut
end

get '/:url' do
  original = ShortURL.read(params[:url])

  if original.match(/http/) 
    redirect to(original)
  elsif original
    redirect 'http://' + original
  else
    "Sorry, URL not found."
  end
end

post '/' do
 url = generate_short_url(params[:url])
end

LETTERS = Array('a'..'z')
def generate_short_url(original)

  ShortURL.save(Base64.encode64(original)[0..6], original)

  # Array.new(6) { LETTERS.sample }.join #Alternative Hashing Method

  'localhost:9393/' + Base64.encode64(original)[0..6]
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
