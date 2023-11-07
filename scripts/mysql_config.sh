#!/bin/bash

#Entramos a la consola de nuestro docker MySQL
#docker exec -i mysql bash < scripts/alter_user.sh
#docker exec -i mysql bash "mysql -u root -p$password_docker_mysql <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$password_root_mysql'"

source scripts/.env

docker exec -i mysql bash -c "mysql -u root -p$password_docker_mysql <<< \"ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$password_docker_mysql'\""


#old_password=hola
#new_password=hola
#sudo docker exec -i mysql bash -c "mysql -u root -p$old_password <<< \"ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY '$new_password'\""