# README

Connections will be a proof-of-concept web application in which users can record and track information about their personal connections, such as colleagues, classmates, and friends.

This project is in the early stages of development.

* Ruby version: Ruby 2.4.1, Rails 5.0.2

* System dependencies: Docker
    - There's no need to have Ruby or Rails pre-installed. Simply download Docker and you can use our Dockerfile recipe to develop/test/run Connections.

* Configuration:
    - Create a local config/local_env.yml and populate its variables (see https://github.com/zquestz/omniauth-google-oauth2)
      ```yaml
      GOOGLE_CLIENT_ID: 'Enter the Google client id for your project'
      GOOGLE_CLIENT_SECRET: 'Enter the Google client secret for your project'
      ```

* Running the application locally:
    - ```docker-compose build; docker-compose up```
    - ```docker-compose run -e "RAILS_ENV=development" web rake db:create db:migrate```
    - The application will now be running at localhost:3000

* How to run the test suite:
    - ```docker-compose build; docker-compose up```
    - ```docker-compose run -e "RAILS_ENV=test" web rake db:create db:migrate```
    - All tests: ```docker-compose run -e "RAILS_ENV=test" web bundle exec rake spec```
    - Specific test: ```docker-compose run -e "RAILS_ENV=test" web rspec spec/path/to/spec.rb```
    - Lint code analysis: ```docker-compose run -e "RAILS_ENV=test" web rubocop```
