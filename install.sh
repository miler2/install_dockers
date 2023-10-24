#!/bin/bash

apt update
apt upgrade

#Instalamos docker en nuestra máquina
apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - -y
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
apt install docker-ce -y

#Creamos el docker MySQL con persistencia de datos:
docker run -d -p 33060:3306 --name mysql -v /home/ubuntu/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Miler mysql

#Entramos a la consola de nuestro docker MySQL
docker exec -it mysql bash

mysql -u root <<< "ALTER USER 'root'@'localhost' IDENTIFIED BY 'Miler';"
