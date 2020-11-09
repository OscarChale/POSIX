#!bin/bash
#LAB 2 - crear archivos, mostrar contenido y estadísticas

#Aprendamos a crear un nuevo archivo
touch file1.txt

#creará un nuevo archivo o cambiará la marca de tiempo de un archivo existente
touch  file2.txt

#creará un nuevo archivo vacío, si el archivo aún no existe. para ver el contenido
del directorio, también puede usar:
dir

#Limpiar 
clear

#Imprimamos algún mensaje en el terminal
echo "hello"

#Redirigamos el mensaje a un nuevo archivo en lugar de a la pantalla.
echo "hello" > hello.txt

Para agregar datos debe usar: >>
echo "linux" >> hello.txt 
echo "world" >> hello.txt

#Para ver el contenido del archivo
cat hello.txt

#Para ver solo las dos primeras líneas del archivo
head -2 hello.txt

#mostrará las primeras 10 líneas cuando ejecute
head hello.txt

#ver las dos últimas líneas
tail -2 hello.txt

#para mostrar líneas desde el principio y tailse usará para mostrar las últimas líneas
tail hello.txt

#Veamos algunas estadísticas de los archivos y directorios que hemos creado hasta ahora.
stat hello.txt

#Ahora hagamos un statdirectorio on
stat dir1




#Fin Lab 2