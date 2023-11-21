#!/bin/bash

# Nama Docker image yang akan dibangun
IMAGE_NAME="ghcr.io/qolbiadi14/karsajob-docker-image/karsajobs-ui:latest"

# Build Docker image dari Dockerfile
docker build -t $IMAGE_NAME -f Dockerfile .

# Login ke GitHub Container Registry
echo "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" | docker login ghcr.io -u qolbiadi14 --password-stdin

# Push Docker image ke GitHub Container Registry
docker push $IMAGE_NAME

# Logout dari GitHub Container Registry setelah selesai
docker logout ghcr.io
