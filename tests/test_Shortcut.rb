ENV['RACK_ENV'] = 'test'
require './Shortcut.rb'
require 'test/unit'
require 'rack/test'
require 'nokogiri'

class Test::Unit::TestCase
  include Rack::Test::Methods
end

class TestShortcut < Test::Unit::TestCase
  def test_sample
    assert_equal(4, 2 + 2)
  end
end

class HomePageTest < Test::Unit::TestCase
  def app() Sinatra::Application end

  def test_homepage_loads
    get '/'
    assert last_response.ok?
  end

  def test_app_title
    response = get '/'
    page = Nokogiri::HTML(response.body)
    assert (page.title == 'Shortcut')
  end

  def test_debug_not_present
    response = get '/'
    page = Nokogiri::HTML(response.body)
    assert_nil page.at_css("#infobox")
  end
end
