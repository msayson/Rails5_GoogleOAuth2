# Connections

[<img src="https://travis-ci.org/msayson/connections.svg?branch=master" alt="Build Status" />](https://travis-ci.org/msayson/connections)

Connections will be a web application in which users can keep notes on personal connections.

This project is in the early stages of development, and is being built primarily for fun and to explore various technologies.

### Technology stack

Ruby 2.4.1, Rails 5.0.2, PostgreSQL 9.6, Docker

### System dependencies

Docker.  That's it.

There's no need to pre-install Ruby, since the docker-compose script sets up all dependencies in self-contained Docker containers.

### Configuration

Create a local config/local_env.yml and populate its variables (see https://github.com/zquestz/omniauth-google-oauth2).

```yaml
GOOGLE_CLIENT_ID: 'Enter the Google client id for your project'
GOOGLE_CLIENT_SECRET: 'Enter the Google client secret for your project'
```

### How to run the app locally (port 3000)

```bash
./runConnections.sh
```

### How to run tests in a self-contained run

```bash
./runTestsInNewContainers.sh
```

This sets up Docker containers, runs tests, then tears down the containers.

### How to run tests on-demand

- ```./runConnections.sh``` (in a separate terminal)
- ```docker-compose run -e "RAILS_ENV=test" web rake db:migrate```
- All tests: ```docker-compose run -e "RAILS_ENV=test" web bundle exec rake spec```
- Specific test: ```docker-compose run -e "RAILS_ENV=test" web rspec spec/path/to/spec.rb```
- Lint code analysis: ```docker-compose run -e "RAILS_ENV=test" web rubocop```

You can use this approach to continually test during development.

### License

Connections is released under the [MIT License](http://www.opensource.org/licenses/MIT).
