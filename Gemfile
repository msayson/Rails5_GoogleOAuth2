source 'https://rubygems.org'
ruby '2.4.6'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# ========================
# Core technology stack
# ========================

# Rails components used by this project
gem 'activerecord', '~> 5.1.6'
gem 'activemodel', '~> 5.1.6'
gem 'actionpack', '~> 5.1.6'
gem 'actionview', '~> 5.1.6'
gem 'activesupport', '~> 5.1.6'
gem 'railties', '~> 5.1.6'
gem 'sprockets-rails', '~> 3.2.1'

gem 'pg', '~> 0.21.0'      # Use PostgreSQL for database
gem 'puma', '~> 3.12.6' # Use Puma for app server

# ========================
# Authentication libraries
# ========================
gem 'omniauth', '1.8.1'
gem 'omniauth-google-oauth2', '0.5.3'

# ========================
# JavaScript / CoffeeScript
# ========================
gem 'coffee-rails', '~> 4.2' # CoffeeScript support
gem 'uglifier', '>= 4.1' # Uglifier compresses JavaScript assets
# RubyRacer embeds the V8 Javascript Interpreter into Ruby
# gem 'therubyracer', platforms: :ruby

# ========================
# Stylesheets
# ========================
gem 'sass-rails', '~> 5.0.7' # Use SCSS for stylesheets

# ========================
# Miscellaneous
# ========================
gem 'figaro', '~> 1.1.1'    # Environment variable management
gem 'redcarpet', '~> 3.4.0' # Markdown processing
gem 'turbolinks', '~> 5.1'  # Speed up web app navigation
# gem 'tzinfo-data', platforms: %I[mingw mswin x64_mingw jruby] # Timezones

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', '~> 10.0', platform: :mri
end

group :test do
  gem 'brakeman', '>= 4.3', require: false # Security code analyzer
  gem 'capybara', '~> 3.1'          # Feature spec tests
  gem 'factory_girl_rails', '~> 4.8.0' # Fixture replacement/generation
  gem 'faker', '~> 1.7.3'              # Generate fake data
  gem 'rspec-rails', '~> 3.7.2'        # Test framework
  gem 'rubocop', '>= 0.56'          # Style guide code analyzer
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring', '~> 2.0' # Ease development by keeping app running in background
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages or by using
  # <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.6.2'
end
