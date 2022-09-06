# helloworld

## Description

Simple nodejs web server

## Run

docker run -d \
--name=helloworld \
-p 3000:3000 \
--restart unless-stopped \
saracenrhue/helloworld:latest

## Building and pushing a multi-arch container

* sudo systemctl start docker
* docker login
* docker buildx ls
* docker buildx create --name mybuilder
* docker buildx use mybuilder
* docker buildx inspect --bootstrap
* docker run -it --rm --privileged tonistiigi/binfmt --install all
* docker buildx build --platform linux/amd64,linux/arm64 -t saracenrhue/helloworld:latest . --push
