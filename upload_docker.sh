#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

dockerpath=amran08/machine-learning-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username amran08 && docker tag machine-learning-microservice:latest $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath
