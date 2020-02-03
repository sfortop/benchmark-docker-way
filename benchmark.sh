#!/usr/bin/env bash

cd src/$1
docker-compose up --no-start
docker-compose up -d
cd -
#todo add wait docker up
docker run --rm -v $(pwd):/var/loadtest --net host \
    -it direvius/yandex-tank \
    -c /var/loadtest/load.yml
cd -
docker-compose down
cd -
