#!/bin/bash
set -e

# Stop the running container based on the image
CONTAINER_ID=$(docker ps -q --filter ancestor=mahankali2k/simple-python-flask-app)

if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping container with ID: $CONTAINER_ID"
  docker stop "$CONTAINER_ID"
  docker rm "$CONTAINER_ID"
else
  echo "No container running with the specified image."
fi
