#! /bin/bash

docker build -t fireworkweb/node:alpine alpine
docker build -t fireworkweb/node:qa qa
docker build -t fireworkweb/node:12-alpine 12-alpine
docker build -t fireworkweb/node:10-alpine 10-alpine
docker build -t fireworkweb/node:8-alpine 8-alpine
