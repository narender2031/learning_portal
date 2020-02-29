# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# ruby
ruby '2.5.0'

# rails
gem 'rails', '~> 5.2.2'
# puma server
gem 'puma', '~> 3.12'
# Saas Rails
gem 'sass-rails', '~> 5.0'
# Ruby wrapper for UglifyJS JavaScript compressor.
gem 'uglifier', '>= 1.3.0'
# coffe scripts
gem 'coffee-rails', '~> 4.2'
# rack core for rest api
gem 'rack-cors'
# Json web token
gem 'jwt'
# js webppacker
gem 'webpacker', '~> 3.5'
# json builder
gem 'jbuilder', '~> 2.5'
# serialize the modal data into json format
gem 'active_model_serializers', '~> 0.10.0'
# optional support for active record and yml
gem 'bootsnap', '>= 1.1.0', require: false
# json validator
gem 'json-schema', '~> 2.7'
# RuboCop
# gem 'rubocop', '~> 0.66.0', require: false
# soft delete
gem 'paranoia', '~> 2.2'
# rails-swagger api
gem 'rswag-api'
# rails-swagger UI
gem 'rswag-ui'
# phone validations
gem 'phonelib'
# messaging service
gem 'twilio-ruby', '~> 5.20.0'
# s3 bucket
gem 'aws-sdk-s3', require: false
# erd diagram
gem 'rails-erd', group: :development
# Rubocop rspec
gem 'rubocop-rspec'
group :development, :test do
  # debugger
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # consoole
  gem 'web-console', '>= 3.3.0'
  # listen
  gem 'listen', '>= 3.0.5', '< 3.2'
  # rails preloader. Run rails application at background.
  gem 'spring'
  # makes Spring watch the filesystem for changes using Listen
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # testing
  gem 'capybara', '>= 2.15'
  # test the client side
  gem 'selenium-webdriver'
  # supprot of google chrome to run client test
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# admin
gem 'administrate'
# bootstrap
gem 'bootstrap', '~> 4.0.0'
# store env variable
gem 'bourbon'
# user auth
gem 'devise'
# user auth jwt token
gem 'devise-jwt'
# inviate user
gem 'devise_invitable'
# load static pages
gem 'high_voltage'
# postgresql
gem 'pg'
# policy
gem 'pundit'
# slim client frame work
gem 'slim-rails'
# Fake data

group :development do
  # genrate the active record schema
  gem 'annotate'
  # batter error
  gem 'better_errors'
  # gaurd
  gem 'guard-bundler'
  # guard-rails
  gem 'guard-rails'
  # rspec gaurd
  gem 'guard-rspec'
  # store env varibale
  gem 'dotenv-rails'
  # rails layout
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring-commands-rspec'
end

group :development, :test do
  # factory bot for specs
  gem 'factory_bot_rails'
  # facker for spec, genrate fake data
  gem 'faker'
  # Rails swagger spec
  gem 'rswag-specs'
  # testing framework
  gem 'rspec-rails'
  # matcher rspec
  gem 'shoulda-matchers', '4.0.0.rc1'
  # rails controller text
  gem 'rails-controller-testing' # If you are using Rails 5.x
end

group :test do
  # db cleaner specs
  gem 'database_cleaner'
  # Launchy is helper class for launching cross-platform application
  gem 'launchy'
end
