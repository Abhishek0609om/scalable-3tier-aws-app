#!/bin/bash

docker stop my-app ||true
docker rm my-app || true 

docker pull orionson/my-app:v1

docker run -d -p 80:3000 --name my-app orionson/my-app:v1
