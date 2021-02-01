#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath=youssefrefaat4/app

# Step 2
# Run a Docker Hub container with kubernetes
kubectl run prediction-app-pod\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=pred-app-pod


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward prediction-app-pod 8000:80
