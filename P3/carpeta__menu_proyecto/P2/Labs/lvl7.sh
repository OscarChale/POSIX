#!bin/bash
#LAB 7- localizar el archivo y su tipo

#A menudo necesitamos averiguar un tipo de archivo, para tal tarea, podemos usar
file linux.txt


#determina el tipo de archivo como texto ASCII
file /dev/null
/dev/null: characater special dice, es un dispositivo de carácter.

Tips and tricks:

#También puede encontrar información sobre el sistema de archivos de dispositivos especiales. 
file -s /dev/sda2

#a menudo necesitamos encontrar la ubicación de un determinado archivo
whereis ls


#deberías ver una salida:
ls: /bin/ls /usr/share/man/man1p/ls.1p.gz /usr/share/man/man1/ls.1.gz

#El comando localizará los archivos fuente y binarios
whereis stdio.h
#salida:
stdio: /usr/include/stdio.h /usr/share/man/man3/stdio.3.gz

#Suponga que ha instalado dos versiones a php (php4 y php5), cuando simplemente escribe
php
#Averiguemos la version
which php


#Para localizar un archivo binario o si tiene dos versiones de un archivo binario instalada
#para buscar un archivo en cualquier directorio
find ~ -name "linux.txt"

#Para buscar archivos normales e invocar el comando de archivo en los resultados
find . -type f -exec file '{}' \;

#Para buscar archivos regulares y mostrar sus atributos usando el comando ls
find . -type f -exec ls -l '{}' \;

#Para buscar archivos de más de 20 bytes de tamaño y enumerarlos, ejecute
find ~ -type f -size +20c -exec ls -hl {} \;

#Fin del laboratiorio 7