#!/bin/bash

docker_build_push() {
    cd $1
    docker build --platform $3 -t yumekiti/$2 .
    docker push yumekiti/$2
    cd ..
}

# api
docker_build_push "api" "cocoroiki-api" "linux/arm64"

# bff
docker_build_push "bff" "cocoroiki-bff" "linux/arm64"

# cms
docker_build_push "cms" "cocoroiki-cms" "linux/arm64/v8"