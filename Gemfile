source 'https://rubygems.org'
ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# ========================
# Core technology stack
# ========================
gem 'pg', '~> 0.18'     # Use PostgreSQL for database
gem 'puma', '~> 3.0'    # Use Puma for app server
gem 'rails', '~> 5.1.0' # Ruby on Rails

# gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password

# ========================
# Authentication libraries
# ========================
gem 'omniauth', '1.6.1'
gem 'omniauth-google-oauth2', '0.4.1'

# ========================
# JavaScript / CoffeeScript
# ========================
gem 'coffee-rails', '~> 4.2' # CoffeeScript support
gem 'uglifier', '>= 1.3.0' # Uglifier compresses JavaScript assets
# RubyRacer embeds the V8 Javascript Interpreter into Ruby
# gem 'therubyracer', platforms: :ruby

# ========================
# Stylesheets
# ========================
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets

# ========================
# Miscellaneous
# ========================
gem 'figaro', '~> 1.1.1'    # Environment variable management
gem 'jbuilder', '~> 2.5'    # Interface for building JSON APIs
gem 'redcarpet', '~> 3.4.0' # Markdown processing
gem 'turbolinks', '~> 5'    # Speed up web app navigation
# gem 'tzinfo-data', platforms: %I[mingw mswin x64_mingw jruby] # Timezones

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platform: :mri
end

group :test do
  gem 'capybara', '~> 3.1'          # Feature spec tests
  gem 'factory_girl_rails', '4.8.0' # Fixture replacement/generation
  gem 'faker', '1.7.3'              # Generate fake data
  gem 'rspec-rails', '3.7.2'        # Test framework
  gem 'rubocop', '>= 0.48'          # Style guide code analyzer
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring' # Ease development by keeping app running in background
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages or by using
  # <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end
