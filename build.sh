#!/bin/bash

# Set the Docker image name and tag
IMAGE_NAME="your-image-name"
TAG="latest"

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

# Push the Docker image to the dev repository on Docker Hub
docker push your-docker-hub-username/dev:$TAG

