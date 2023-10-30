#!/bin/bash
docker rm mysql
docker run -d -p 33060:3306 --name mysql -v /home/ubuntu/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Miler mysql