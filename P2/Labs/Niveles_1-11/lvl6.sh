#!bin/bash
#LAB 6 - Cambio de atributos de archivo

#comando que manipula el nombre de la ruta:
dirname dir2/dir3/dir4/hi.txt

#quitar el sufijo que no es de directorio del nombre de la ruta, le dio la salida:
dir2/dir3/dir4

#usemos la misma ruta con un comando diferente esta vez:
basename dir2/dir3/dir4/hi.txt

#esto quita el directorio y el sufijo del nombre de la ruta y da la última entrada:
hi.txt

#permite cambiar el permiso de acceso a archivos
chmod -v 666 file1.txt


#Eso configurará el archivo "file1.txt" para que sea "escribible en todo el mundo". Esto significa que el propietario, el grupo y otros pueden leer y escribir en el archivo. 
chmod a-rw file1.txt

#con el siguiente comando, solo el propietario puede leer o escribir en este archivo
chmod -R 644 ~/chmod_dir

#ahora para cambiar el propietario del archivo, chown 
root file1.txt


#oh, ese es el mensaje de error esperado, puede usar chown solo como usuario root,
pero de todos modos esa es la sintaxis / uso del comando chown.
chown: changing ownership of file1.txt: Operation not permitted
#Esto hace lo mismo, pero además cambia el grupo a "personal"

#Para cambiar el permiso en todos los archivos y subdirectorios, use el interruptor -R.
chown root:staff -R ~/dir2

#Utilice la opción "--desde" para cambiar los archivos que pertenecen a un grupo de usuarios específico.
chown --from=webminal:webminal root:staff -R ~/dir2


#cambiará los archivos que pertenecen al usuario del webminal y al grupo del webminal 
a la raíz y otros archivos de usuario que quedan como están
chgrp root file1.txt
chgrp: changing group of `file1.txt': Operation not permitted
#de nuevo ese es el mensaje de error esperado, puede usar chgrp solo como usuario root

#Para cambiar el grupo de dir2 y subarchivos a "root".
chgrp -hR root dir2

#Fin Lab 6