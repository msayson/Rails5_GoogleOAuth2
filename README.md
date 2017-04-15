# README

Connections will be a proof-of-concept web application in which users can record and track information about their personal connections, such as colleagues, classmates, and friends.

This project is in the early stages of development.

* Ruby version: Ruby 2.4.1, Rails 5.0.2

* System dependencies: Docker
    - There's no need to have Ruby or Rails pre-installed. Simply download Docker and you can use our Dockerfile recipe to develop/test/run Connections.

* Configuration: ```docker-compose build; docker-compose up```

* How to run the test suite (after running ```docker-compose up```):
    - Tests: ```docker-compose run web rake test```
    - Lint code analysis: ```docker-compose run web rubocop```

* Deployment instructions:
    - You can currently run the application locally by running ```docker-compose build; docker-compose up```.  The application will now be running at localhost:3000
