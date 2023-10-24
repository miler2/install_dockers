#!/bin/bash

#Entramos a la consola de nuestro docker MySQL
docker exec -it mysql bash

#mysql -u root -p$password <<< "ALTER USER 'root'@'localhost' IDENTIFIED BY 'Miler';"
mysql -u root -pMiler <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Miler';"
