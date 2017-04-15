source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# ========================
# Core technology stack
# ========================
gem 'pg', '~> 0.18'     # Use PostgreSQL for database
gem 'puma', '~> 3.0'    # Use Puma for app server
gem 'rails', '~> 5.0.2' # Ruby on Rails

# gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password
# gem 'capistrano-rails', group: :development # Tool for easy deployment
# gem 'redis', '~> 3.0' # Redis is an in-memory data structure store
# You can use Redis as a fast cache, see Action Cable for production

# ========================
# Authentication libraries
# ========================
gem 'omniauth', '1.6.1'
gem 'omniauth-google-oauth2', '0.4.1'

# ========================
# JavaScript / CoffeeScript
# ========================
# See https://github.com/rails/execjs#readme for more supported runtimes

# RubyRacer embeds the V8 Javascript Interpreter into Ruby
# gem 'therubyracer', platforms: :ruby
gem 'coffee-rails', '~> 4.2' # CoffeeScript support
gem 'jquery-rails' # JQuery JavaScript library
gem 'uglifier', '>= 1.3.0' # Uglifier compresses JavaScript assets

# ========================
# Stylesheets
# ========================
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets

# ========================
# Miscellaneous
# ========================
gem 'figaro', '~> 1.1.1' # Environment variable management
gem 'jbuilder', '~> 2.5' # Interface for building JSON APIs
gem 'turbolinks', '~> 5' # Speed up web app navigation
gem 'tzinfo-data', platforms: %I[mingw mswin x64_mingw jruby] # Timezones

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platform: :mri
end

group :test do
  gem 'capybara', '~> 2.13'         # Feature spec tests
  gem 'factory_girl_rails', '4.8.0' # Fixture replacement/generation
  gem 'faker', '1.7.3'              # Generate fake data
  gem 'rspec-rails', '3.5.2'        # Test framework
  gem 'rubocop', '>= 0.48'          # Static code analysis
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring' # Ease development by keeping app running in background
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages or by using
  # <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end
