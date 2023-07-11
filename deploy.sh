#!/bin/bash

# Set the Docker image name and tag
IMAGE_NAME="your-image-name"
TAG="latest"

# Pull the Docker image from the dev repository on Docker Hub
docker pull your-docker-hub-username/dev:$TAG

# Run the Docker container
docker run -d --name your-container-name -p 80:80 $IMAGE_NAME:$TAG

