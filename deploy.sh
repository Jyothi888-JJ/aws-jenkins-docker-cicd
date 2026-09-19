#!/bin/bash

set -e

IMAGE_NAME="aws-devops-app"

echo "Building Docker image..."
docker build -t $IMAGE_NAME .

echo "Stopping existing container..."
docker stop aws-devops-app 2>/dev/null || true

echo "Removing existing container..."
docker rm aws-devops-app 2>/dev/null || true

echo "Starting new container..."
docker run -d \
  --name aws-devops-app \
  -p 80:80 \
  $IMAGE_NAME

echo "Deployment completed successfully."
