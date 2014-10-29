source 'https://rubygems.org'

# ruby "2.0.0"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# The bcrypt Ruby gem provides a simple wrapper for safely handling passwords.
gem 'bcrypt', '~> 3.1.7', :require => 'bcrypt'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
#Twitter's Bootstrap, converted to Sass and ready to drop into Rails or Compass
gem 'bootstrap-sass', '~> 3.2.0.2'
# Parse CSS and add vendor prefixes to CSS rules using values .
gem 'autoprefixer-rails', '~> 3.1.2.20141016'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
gem 'will_paginate',           '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'pry', '~> 0.10.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

group :development, :test do
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
#  Debug inspector c APi for call stack navigation.
gem 'byebug', '~> 3.5.1'
end

group :production do
	# Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/]. It works with {PostgreSQL 8.4 and laterß
	gem 'pg', '0.17.1'
	#Run Rails the 12factor way
	gem 'rails_12factor', '0.0.2'
end

group :test do
  #Death to haphazard monkey-patching! Extend Minitest through simple hooks.
  gem 'minitest-reporters', '1.0.5'
  #MiniBacktrace allows you to take advantage of the Rails.backtrace_cleaner when using MiniTest. 
  gem 'mini_backtrace',     '0.1.3'
  #Guard::Minitest automatically run your tests with Minitest framework (much like autotest)
  gem 'guard-minitest',     '2.3.1'
end
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

