ENV['RACK_ENV'] = 'test'
require "./Shortcut.rb"
require "test/unit"
require 'rack/test'

class TestShortcut < Test::Unit::TestCase

  def test_sample
    assert_equal(4, 2+2)
  end
  
end

class HomepageTest < Test::Unit::TestCase
  include Rack::Test::Methods
  def app() Sinatra::Application end

  def test_homepage
    get '/'
    assert last_response.ok?
  end
end
