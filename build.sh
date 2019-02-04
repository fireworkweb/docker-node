#! /bin/bash

docker build -t fireworkweb/node:alpine alpine/
docker build -t fireworkweb/node:qa qa/
