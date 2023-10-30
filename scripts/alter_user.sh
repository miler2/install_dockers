#!/bin/bash
mysql -u root -pMiler <<< "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Miler';"