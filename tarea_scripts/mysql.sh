#!/bin/bash
#Este comando es la copia del archivo mysql.sh en scripts pero con el --volume añadido.
docker run -d --rm -p 33060:3306 --name mysql --volume=/root/docker/mysql/conf.d:/etc/mysql/conf.d -v /home/ubuntu/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Miler mysql