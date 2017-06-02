source 'https://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.3'
# Makes running your Rails app easier. Based on the ideas behind 12factor.net
gem 'rails_12factor', '~> 0.0.3', group: :production
# web server
# gem 'puma'
# Postgres SQL
# gem 'pg', '~> 0.18.4'
# MongoDB NoSQL
gem 'mongoid', '~> 6.1.0'
# C extensions to accelerate the Ruby BSON serialization used by Mongoid
gem 'bson_ext'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'
# Bootstrap-generators provides Twitter Bootstrap generators for Rails
gem 'bootstrap-sass', '~> 3.3.6'
gem 'bootstrap-generators', '~> 3.3.4'
# Solves problem of "Could not find a JavaScript runtime" with uglifier gem
gem 'therubyracer', '~> 0.12'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 3.2.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.0'
# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Forms made easy!
gem 'simple_form', '~> 3.5'
gem 'simple_form_custom_inputs', '~> 0.1.0'
# Cocoon makes it easier to handle nested forms.
gem 'cocoon', '~> 1.2'
# underscore.js asset pipeline provider/wrapper
gem 'underscore-rails', '~> 1.8'
# Library for validating urls in Rails.
gem 'validate_url', '~> 1.0'
# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise', '~> 4.3'

# Easy file attachment management
# gem 'paperclip', '~> 5.0.0'
gem 'cloudinary', '~> 1.8.0'
# gem 'paperclip-cloudinary', '~> 1.3.0'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'

# ActiveModel/ActiveRecord validators
gem 'validators', '~> 2.5.0'
# Validate, generate and format CPF/CNPJ numbers
gem 'cpf_cnpj', '~> 0.3.0'
# Simple integration between ActionMailer and SendGrid
gem 'sendgrid', '~> 1.2.4'
# Slim progress bars for Ajax'y applications.
gem 'nprogress-rails', '~> 0.2.0.2'
# Useful to make forms and validations, get a list of states in a country
gem 'city-state', '~> 0.0.13'
# Bug Tracking 
gem 'sentry-raven', '~> 2.5', '>= 2.5.1'
# Alerts with confirmation
gem 'sweet-alert-confirm', github: 'marcelobarreto/sweet-alert-rails-confirm'
# A set of Rails responders to dry up your application
gem 'responders', '~> 2.3'

group :development do
  # Supporting gem for Rails Panel (Google Chrome extension for Rails development)
  gem 'meta_request',  '~> 0.4'
  # Open e-mails on browser tab
  gem 'letter_opener', '~> 1.4', '>= 1.4.1'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.5', '>= 3.5.1'
  # Profiling tool originally to get an insight into application
  # https://github.com/peek/peek
  gem 'peek', '~> 1.0', '>= 1.0.1'
 
  # Better Errors replaces the standard Rails error page with a much better and more useful error page
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  # Brakeman detects security vulnerabilities in Ruby on Rails applications via static analysis
  gem 'brakeman', '~> 3.6', '>= 3.6.2'
  # Provides a dev bar and an overlay in-browser to visualize your UI's rendered partials
  gem 'xray-rails', '~> 0.3.0'
  
  # Is used to easily generate fake data: names, addresses, phone numbers, etc.
  gem 'faker', '~> 1.7', '>= 1.7.3'
  # Utility to install, configure, and extend Git hooks
  gem 'overcommit', '~> 0.39.0', require: false
  # Automatic Ruby code style checking tool
  gem 'rubocop', '~> 0.47.1', require: false
  # Retrieve the binding of a method's caller. Can also retrieve bindings even further up the stack.
  gem 'binding_of_caller', '~> 0.7.2'
end

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0', '>= 2.0.2'
  # Console Debugger
  gem 'pry-rails', '~> 0.3.6'
end

group :test do
  # Support for multiple factories for the same class (user, admin_user, and so on)
  gem 'factory_girl_rails', '~> 4.8'
  # Coverage across test suites
  gem 'simplecov', '~> 0.14.1', :require => false
  # Post code coverage results to Codacy.
  gem 'codacy-coverage', :require => false
  # Poltergeist is a driver for Capybara that allows you to run your tests on a headless WebKit browser, provided by PhantomJS
  gem 'poltergeist', '~> 1.15'
  # rspec-rails is a testing framework
  gem 'rspec-rails', '~> 3.6'
  # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners that test common Rails functionality.
  gem 'shoulda-matchers', '~> 3.1'
  # Strategies for cleaning databases. Can be used to ensure a clean state for testing.
  gem 'database_cleaner', '~> 1.6', '>= 1.6.1'
  # Capybara is an integration testing tool for rack based web applications. It simulates how a user would interact with a website
  gem 'capybara', '~> 2.14'
end

source 'https://rails-assets.org' do
  # NOTY is a notification library that makes it easy to create alert 
  gem 'rails-assets-noty'
  # DataTables is a plug-in for advanced interaction controls to any HTML table.
  gem 'rails-assets-datatables.net'
  gem 'rails-assets-datatables.net-bs'
  # A fast, caching, dynamic inline SVG DOM injection library.
  gem 'rails-assets-svg-injector'
  # Switchery is a simple component that helps you turn your default HTML checkbox inputs into beautiful iOS 7 style 
  gem 'rails-assets-switchery'
  #  It allows a user to more easily enter fixed width input where you would like them to enter the data in a certain format (dates,phone numbers, etc)
  gem 'rails-assets-jquery.maskedinput'
  # Alerts with confirmation
  gem 'rails-assets-sweetalert'
end


