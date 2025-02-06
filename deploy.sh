#!/bin/bash

echo "hi123"

# Ensure build.sh is executable
chmod +x build.sh

# Run the build script
./build.sh

# Docker login (Avoid storing credentials in the script)
echo "Logging into Docker Hub..."
echo "12345678910" | docker login -u archita392 --password-stdin

# Build Docker image
echo "Building Docker image..."
docker build -t archita392/task_3 .

# Push Docker image to Docker Hub
echo "Pushing image to Docker Hub..."
docker push archita392/task_3

echo "Deployment script completed."
