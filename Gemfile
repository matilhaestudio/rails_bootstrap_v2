source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Postgres SQL
gem 'pg', '~> 0.18.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Solves problem of "Could not find a JavaScript runtime" with uglifier gem
gem 'therubyracer'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'simple_form'
gem 'cocoon'
gem 'underscore-rails'
gem 'validate_url'
gem 'puma'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Supporting gem for Rails Panel (Google Chrome extension for Rails development)
gem 'meta_request'

# Profiling tool originally to get an insight into application
# https://github.com/peek/peek
gem 'peek'

# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise'

gem 'bootstrap-sass'
gem 'active_bootstrap_skin'

# Bootstrap-generators provides Twitter Bootstrap generators for Rails
gem 'bootstrap-generators', '~> 3.3.4'

# Easy file attachment management for ActiveRecord
gem 'paperclip', '~> 5.0.0'
gem 'cloudinary'
gem 'paperclip-cloudinary'


gem 'validators'
gem 'cpf_cnpj'
gem 'sendgrid'
gem 'nprogress-rails'
gem 'city-state'

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

group :development do
  gem 'letter_opener'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Better Errors replaces the standard Rails error page with a much better and more useful error page

  gem "better_errors"

  gem 'brakeman', :require => false
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
end


