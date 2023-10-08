#!/bin/bash

docker_build_push() {
    cd $1
    docker build --platform linux/arm64 -t yumekiti/$2 .
    docker push yumekiti/$2
    cd ..
}

# api
docker_build_push "api" "cocoroiki-api"

# bff
docker_build_push "bff" "cocoroiki-bff"

# cms
docker_build_push "cms" "cocoroiki-cms"