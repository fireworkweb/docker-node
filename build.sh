#! /bin/bash

docker build --pull -t fireworkweb/node:8 8
docker build --pull -t fireworkweb/node:8-qa 8-qa
docker build --pull -t fireworkweb/node:10 10
docker build --pull -t fireworkweb/node:10-qa 10-qa
docker build --pull -t fireworkweb/node:12 12
docker build --pull -t fireworkweb/node:12-qa 12-qa
docker build --pull -t fireworkweb/node:14 14
docker build --pull -t fireworkweb/node:14-qa 14-qa
docker build --pull -t fireworkweb/node:latest latest
docker build --pull -t fireworkweb/node:qa qa
