#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="abdelazim/ml-microservice:dev"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/.docker/token | docker login -u abdelazim --password-stdin
docker tag ml-microservice:dev $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath