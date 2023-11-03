#!/bin/bash

source scripts/.env
docker run -d --rm -p 33060:3306 --name mysql -v /home/ubuntu/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$password_docker_mysql mysql