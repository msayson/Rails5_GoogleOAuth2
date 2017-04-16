#!/bin/bash
set -e

# Max query attempts before consider setup failed
MAX_TRIES=5

# Returns a true-like value if and only if a query
# with the expected db and user succeeds
function dbIsReady() {
  docker-compose logs | grep "PostgreSQL init process complete"
}

attempt=1
while [ $attempt -le $MAX_TRIES ]; do
  if dbIsReady; then
    echo "Database container is up!"
    exit 0
  fi
  echo "Waiting for PostgreSQL server... (attempt: $((attempt++)))"
  sleep 5
done

echo "Error: PostgreSQL not responding, cancelling server set up"
exit 1
