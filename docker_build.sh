#!/bin/zsh
VERSION="0.6.0"
docker buildx create --use --name mydevbuilder
docker buildx build --tag scjtqs/gonelist:$VERSION --platform linux/amd64,linux/arm64,linux/arm/v7  --push .
docker buildx rm mydevbuilder