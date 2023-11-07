#!/bin/bash

source scripts/.env
echo "Esta es la contraseña de docker $password_docker_mysql"
mysql -u root -p$password_docker_mysql <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$password_root_mysql';"

#sudo docker exec -it mysql bash -c "mysql -u root -phola <<< 'SHOW DATABASES'"