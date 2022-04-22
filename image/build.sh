#!/bin/bash

# Tag name
TAG='gitlab-registry.cern.ch/sciencebox/docker-images/debugger'

# Build the Docker image
docker build -t $TAG .

# Push the image to the GitLab registry
docker login gitlab-registry.cern.ch
docker push $TAG

