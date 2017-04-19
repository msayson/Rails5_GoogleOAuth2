# README

Connections will be a proof-of-concept web application in which users can record and track information about their personal connections, such as colleagues, classmates, and friends.

This project is in the early stages of development.

* Technology stack: Ruby 2.4.1, Rails 5.0.2

* System dependencies: Docker
    - There's no need to pre-install Ruby, since the docker-compose script sets up all dependencies in self-contained containers.

* Configuration:
    - Create a local config/local_env.yml and populate its variables (see https://github.com/zquestz/omniauth-google-oauth2)
      ```yaml
      GOOGLE_CLIENT_ID: 'Enter the Google client id for your project'
      GOOGLE_CLIENT_SECRET: 'Enter the Google client secret for your project'
      ```

* How to run the app locally (port 3000): ```./runConnections.sh```

* How to run tests in a self-contained run: ```./runTestsInNewContainers.sh```
    - This sets up Docker containers, runs tests, then tears down the containers.

* How to run tests on-demand:
    - ```./runConnections.sh``` (in a separate terminal)
    - ```docker-compose run -e "RAILS_ENV=test" web rake db:migrate```
    - All tests: ```docker-compose run -e "RAILS_ENV=test" web bundle exec rake spec```
    - Specific test: ```docker-compose run -e "RAILS_ENV=test" web rspec spec/path/to/spec.rb```
    - Lint code analysis: ```docker-compose run -e "RAILS_ENV=test" web rubocop```

    You can use this approach to continually test during development.

### Code Status

Master branch:

[<img src="https://travis-ci.org/msayson/connections.svg?branch=master" alt="Build Status" />](https://travis-ci.org/msayson/connections)

Dev branch:

[<img src="https://travis-ci.org/msayson/connections.svg?branch=dev" alt="Build Status" />](https://travis-ci.org/msayson/connections)

### License

Connections is released under the [MIT License](http://www.opensource.org/licenses/MIT).
