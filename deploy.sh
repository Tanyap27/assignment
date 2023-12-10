#!/bin/bash

# Build new Docker image
docker build -t world_hello .

# Stop and remove old containers
docker-compose down

# Start new containers
docker-compose up -d
