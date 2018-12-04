#!/usr/bin/env bash

echo "--------------------------------------"
echo "Starting 'laughs' application"
echo "--------------------------------------"

echo "Compiling npm build"
npm run build
echo "--------------------------------------"

echo "Starting Docker container"
echo "--------------------------------------"
docker build . -t laughs

docker container run -dt --rm -p 8000:8000 --name laughs laughs

echo "'laughs' app started at localhost:8000"
