class DebugTest < Test::Unit::TestCase
  def app() Sinatra::Application end

  def test_debug_loads
    get '/debug'
    assert last_response.ok?
  end

  def test_debug_title
    response = get '/debug'
    page = Nokogiri::HTML(response.body)
    assert page.title == 'Shortcut|Debug'
  end
end
