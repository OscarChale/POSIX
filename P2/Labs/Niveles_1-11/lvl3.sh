#!bin/bash
#LAB 3 - Copiar, renombrar, borrar archivos


#muestra el uso del disco del directorio actual
du

#Utilice el conmutador h para generar en un formato legible por humanos y el conmutador x para excluir otros sistemas de archivos y ~ denota su hogar.*
du -xh ~

#du puede llevar mucho tiempo para que pueda especificar la profundidad máxima del directorio usando la opción
du --max-depth 3 ~

#Ahora copiemos hello.txtal dir2directorio.
cp -v hello.txt dir2

#calcule el uso 
#Esto copiará hello.txt en dir2 al mismo tiempo
cp -v hello.txt dir2/file2.txt

#Esto copiará todos los archivos que terminen con ".txt"
cp  -vr dir2/*.txt dir2/dir3
cp -vr dir2/dir3

#si es un archivo grande o binario, no podemos usar cat. Tenemos que usar:
d5sum hello.txt


#compare md5sum en las máquinas de origen y de destino,
md5sum dir2/hello.txt

#debería ser igual que
md5sum hello.txt

#moverá un archivo al directorio dir4 y lo llamará hi.txt. 
mv hello.txt dir2/dir3/dir4/hi.txt

#moverá todos los archivos "* .txt" bajo dir2 a dir5
mkdir dir5
#Cambiar el nombre dir5 a dir50
mv dir2/*.txt dir5
mv dir5  dir50

#con el comando mv movimos hello.txt debajo de dir4, en lugar de acceder a 
ellos como dir2 / dir3 / dir4 / hi.txt cada vez
ln  dir2/dir3/dir4/hi.txt hello

#Los enlaces físicos se crean de forma predeterminada.
stat hello
stat dir2/dir3/dir4/hi.txt

#Los enlaces suaves se crean usando el interruptor s.
ln -s  dir2/dir3/dir4/hi.txt  softlink
Se crea un nuevo inodo para este nuevo enlace simbólico "softlink" pero el número
de enlaces permanece como 1.
stat softlink

#le indicará un mensaje. rm: remove regular empty file 'file2.txt'? escriba 
#para eliminar el archivo.
#Para eliminar el directorio, primero elimine su contenido con la opción "r",
rm -i file2.txt
rm -ri dir50/*

#Si desea eliminar el contenido de los archivos sin que se le solicite la confirmación, use la opción -f.
rm -rf junk/*
rmdir  dir50

#Fin Lab 3