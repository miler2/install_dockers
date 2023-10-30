#!/bin/bash
mkdir -p /root/docker/mysql/conf.d

#Esto es lo que tendríamos que hacer si lo estuviéramos haciendo manualmente
#Nosotros ya tenemos el archivo creado, a si que simplemente lo copiamos y lo movemos al directiorio.
#nano /root/docker/mysql/conf.d/my-custom.cnf

> /root/docker/mysql/conf.d/my-custom.cnf
cp my-custom.cnf /root/docker/mysql/conf.d/my-custom.cnf