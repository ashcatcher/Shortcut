# frozen_string_literal: true

%w[sinatra base64 pstore].each { |gem| require gem }


get '/' do
  @title = 'Shortcut'
  erb :shortcut
end

get '/:url' do
  url = ShortURL.read(params[:url])

  if url.match?(/http/)
    redirect to(url)
  elsif url
    redirect 'http://' + url
  else
    'Sorry, URL not found.'
  end
end

post '/' do
  generate_short_url(params[:url])
end

LETTERS = Array('a'..'z')
def generate_short_url(url)
  @name ||= request.env['SERVER_NAME']
  @port ||= request.env['SERVER_PORT']
  ShortURL.save(Base64.encode64(url)[0..6], url)

  # Array.new(6) { LETTERS.sample }.join #Alternative Hashing Method

  "#{@name}:#{@port}/" + Base64.encode64(url)[0..6]
end

# logic behind persistence of shortened URL's
class ShortURL
  def self.save(encoded, url)
    store.transaction { store[encoded] = url }
  end

  def self.read(encoded)
    store.transaction { store[encoded] }
  end

  def self.store
    @store ||= PStore.new('shortened_urls.db')
  end
end
