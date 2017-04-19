#!/bin/bash
set -e

echo "Building Docker containers, please wait..."
docker-compose up --build -d
echo "Waiting for Docker containers to finish setting up..."
./waitForContainerSetup.sh
docker-compose ps
echo "Initializing database tables..."
docker-compose run -e "RAILS_ENV=development" web rake db:create db:migrate

echo "Connections is running at localhost:3000!"
echo ""
echo "Press any button to shut down Connections."
read -n1

echo "Stopping and removing Docker containers..."
docker-compose down
