source 'https://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.3'
# web server
gem 'puma'
# Postgres SQL
# gem 'pg', '~> 0.18.4'
# MongoDB NoSQL
gem 'mongoid', '~> 6.1.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'
# Bootstrap-generators provides Twitter Bootstrap generators for Rails
gem 'bootstrap-sass', '~> 3.3'
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
# Easy file attachment management for ActiveRecord
gem 'paperclip', '~> 5.0.0'
gem 'cloudinary', '~> 1.8.0'
gem 'paperclip-cloudinary', '~> 1.3.0'
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

group :development do
  # Supporting gem for Rails Panel (Google Chrome extension for Rails development)
  gem 'meta_request',  '~> 0.4'
  # Open e-mails on browser tab
  gem 'letter_opener'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Profiling tool originally to get an insight into application
  # https://github.com/peek/peek
  gem 'peek', '~> 1.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Better Errors replaces the standard Rails error page with a much better and more useful error page
  gem "better_errors"
  gem 'brakeman', :require => false
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'simplecov', :require => false
  gem 'codacy-coverage', :require => false
  gem "faker"
  gem 'pry-rails'
  gem 'xray-rails'
  gem 'overcommit', '~> 0.38.0', require: false
  gem 'rubocop', '~> 0.47.1', require: false
end

group :test do
  gem 'poltergeist'
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda-matchers', '~> 3.0'
  gem 'database_cleaner'
  gem 'capybara'
end

group :staging, :production do
  gem 'rails_12factor'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-noty'
  gem 'rails-assets-datatables.net'
  gem 'rails-assets-datatables.net-bs'
  gem 'rails-assets-svg-injector'
  gem 'rails-assets-switchery'
  gem 'rails-assets-jquery.maskedinput'
  # Alerts with confirmation
  gem 'rails-assets-sweetalert'
end


