# Instalación de Dockers
Este es el script que me instalará automáticamente lo necesario en la máquina para realizar la creación del docker mysql y phpmyadmin en ubuntu.  

Nos instala el docker MySQL y PhpMyAdmin, además de configurar el usuario root local a contraseña "Miler" con native password.

## Indicaciones:
### Instalación
Si es la primera vez instalando docker en esta máquina vamos a dar permisos de ejecución al archivo install_mysql_docker.sh y lo ejecutaremos. Éste archivo nos hace la instalación entera.  

Si queremos hacer la instalación de nuevo de solo uno de los dos tendremos que usar los archivos scripts/mysql.sh y scripts/phpmyadmin.sh.

### Comprobación de instalación
Si quieres comprobar que se te ha instalado correctamente realiza los siguientes comandos:
- sudo docker ps
- sudo docker exec -it mysql bash
- mysql -u root -p[tu_contraseña] <<< "select user, plugin from mysql.user;"

El primer comando nos mira el estado de los dockers. El segundo y tercero son una continuación, y nos mira si la contraseña de root local se ha cambiado a native password correctamente.