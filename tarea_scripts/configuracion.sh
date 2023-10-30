#!/bin/bash
mkdir -p /root/docker/mysql/conf.d

#Esto es lo que tendríamos que hacer si lo estuviéramos haciendo manualmente
#Nosotros ya tenemos el archivo creado, a si que simplemente lo copiamos y lo movemos al directiorio.
#nano /root/docker/mysql/conf.d/my-custom.cnf

#Creamos el archivo my-custom.cnf dentro del docker
> /root/docker/mysql/conf.d/my-custom.cnf

#Copiamos nuestro archivo local al docker para hacerle la configuración.
cp my-custom.cnf /root/docker/mysql/conf.d/my-custom.cnf

#Eliminamos el docker y lo ejecutamos de nuevo.
docker rm mysql
./../scripts/mysql.sh