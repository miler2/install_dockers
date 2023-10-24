#!/bin/bash

#Entramos a la consola de nuestro docker MySQL
docker exec -it mysql bash

mysql -u root -pMiler <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Miler';"
mysql -u root -pMiler <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'Miler';"
mysql -u root -pMiler <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'Miler';"
mysql -u root -pMiler <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'Miler';"
mysql -u root -pMiler <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'Miler';"
