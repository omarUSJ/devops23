#!/bin/bash

# Pull the latest images
docker-compose pull

# Start the Docker containers in detached mode
docker-compose up -d

# Wait for containers to be up and running (adjust sleep duration as needed)
sleep 30

# Run additional commands or tests if needed

# Stop and remove the containers
docker-compose down

