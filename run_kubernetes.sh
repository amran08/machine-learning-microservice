#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=amran08/machine-learning-microservice


# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment mlcluster --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl proxy

export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME
