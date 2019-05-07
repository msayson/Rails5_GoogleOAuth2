# Rails5_GoogleOAuth2

[<img src="https://travis-ci.org/msayson/Rails5_GoogleOAuth2.svg?branch=master" alt="Build Status" />](https://travis-ci.org/msayson/Rails5_GoogleOAuth2)

This is an example Rails 5 application which uses Google OAuth2 for user authentication.

Beta website: https://rails5-googleoauth2-beta.herokuapp.com

Production website: https://rails5-googleoauth2.herokuapp.com

### Technology stack

Ruby 2.4, Rails 5.1, PostgreSQL 9.6, Docker

### System dependencies

Docker.  That's it.

There's no need to pre-install Ruby, since the docker-compose script sets up all dependencies in self-contained Docker containers.

### Configuration

Create a local config/local_env.yml and populate its variables (see https://github.com/zquestz/omniauth-google-oauth2).

```yaml
GOOGLE_CLIENT_ID: 'Enter the Google client id for your project'
GOOGLE_CLIENT_SECRET: 'Enter the Google client secret for your project'
```

Note that Google OAuth requires verification of website ownership before it will accept Google authentication requests.  See [https://developers.google.com/identity/protocols/OAuth2](https://developers.google.com/identity/protocols/OAuth2) for the latest instructions on how to verify your website.

### How to run the app locally (port 3000)

```bash
./runAppLocally.sh
```

### How to run tests in a self-contained run

```bash
./runTestsInNewContainers.sh
```

This sets up Docker containers, runs tests, then tears down the containers.

### How to run tests on-demand

- ```./runAppLocally.sh``` (in a separate terminal)
- ```docker-compose run -e "RAILS_ENV=test" web rake db:migrate```
- All tests: ```docker-compose run -e "RAILS_ENV=test" web bundle exec rake spec```
- Specific test: ```docker-compose run -e "RAILS_ENV=test" web rspec spec/path/to/spec.rb```
- Lint code analysis: ```docker-compose run -e "RAILS_ENV=test" web rubocop```

You can use this approach to continually test during development.

### License

Rails5_GoogleOAuth2 is released under the [MIT License](http://www.opensource.org/licenses/MIT).
