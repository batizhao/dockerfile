#!/bin/bash

docker run --name mysql \
       -e MYSQL_ROOT_PASSWORD=password \
       -e MYSQL_ROOT_HOST=172.17.0.1 \
       -e MYSQL_DATABASE=paper \
       -d -p 3306:3306 batizhao/mysql
