#!/bin/bash

source scripts/.env

docker exec -i mysql bash -c "mysql -u root -p$password_docker_mysql <<< \"ALTER USER root@localhost IDENTIFIED WITH caching_sha2_password BY '$password_user_root'\""
docker exec -i mysql bash -c "mysql -u root -p$password_docker_mysql <<< \"ALTER USER 'root'@'%' IDENTIFIED WITH caching_sha2_password BY '$password_user_root'\""