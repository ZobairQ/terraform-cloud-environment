#!/bin/bash

set -e

echo "Building terrraform image"
docker build --tag terraform-env .

echo "starting the docker-compose"
docker-compose up -d