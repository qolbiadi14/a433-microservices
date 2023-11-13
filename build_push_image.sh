#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile
#    dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal.
docker images

# 3. Mengubah nama image agar sesuai dengan format Docker Hub.
docker tag item-app:v1 qolbiadi14/item-app:v1

# 4. Login ke Docker Hub via Terminal.
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# 5. Mengunggah image ke Docker Hub.
docker push qolbiadi14/item-app:v1

# Logout dari Docker Hub setelah selesai.
docker logout