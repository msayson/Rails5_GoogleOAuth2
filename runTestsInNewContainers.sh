#!/bin/bash
set -e

echo "Building Docker containers..."
docker-compose up --build -d
echo "Waiting for Docker containers to finish setting up..."
./waitForContainerSetup.sh
docker-compose ps
echo "Initialize database tables and run tests..."
docker-compose run -e "RAILS_ENV=test" web rake db:create db:migrate spec
echo "Tests complete, stop and remove Docker containers..."
docker-compose down
