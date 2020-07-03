#! /bin/bash

docker build --pull -t fireworkweb/node:8 8
docker build -t fireworkweb/node:8-adonis 8-adonis
docker build -t fireworkweb/node:8-adonis-qa 8-adonis-qa
docker build -t fireworkweb/node:8-qa 8-qa
docker build --pull -t fireworkweb/node:10 10
docker build -t fireworkweb/node:10-adonis 10-adonis
docker build -t fireworkweb/node:10-adonis-qa 10-adonis-qa
docker build -t fireworkweb/node:10-qa 10-qa
docker build --pull -t fireworkweb/node:12 12
docker build -t fireworkweb/node:12-adonis 12-adonis
docker build -t fireworkweb/node:12-adonis-qa 12-adonis-qa
docker build -t fireworkweb/node:12-qa 12-qa
docker build --pull -t fireworkweb/node:14 14
docker build -t fireworkweb/node:14-adonis 14-adonis
docker build -t fireworkweb/node:14-adonis-qa 14-adonis-qa
docker build -t fireworkweb/node:14-qa 14-qa
