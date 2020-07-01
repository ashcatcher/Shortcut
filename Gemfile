# frozen_string_literal: true

source 'https://rubygems.org'
# git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '2.6.0'

gem 'rack', '>= 2.1.4'
gem 'sinatra'

group :development do
  gem 'shotgun'
end

group :development, :test do
  gem 'guard'
end

group :test do
  gem 'nokogiri', '>= 1.10.8'
end

group :production do
end
