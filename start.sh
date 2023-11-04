#!/bin/bash

IMAGE_NAME="hello-there"
docker build . -t $IMAGE_NAME
docker run -p 7777:7777 $IMAGE_NAME
