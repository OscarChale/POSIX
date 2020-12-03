#!bin/bash
#LAB 5 - manipular o analizar el contenido del archivo

#busca palabras o líneas coincidentes en el archivo
grep "linux" hello

#Para buscar en todo el directorio de archivos, proporcione el nombre del directorio
grep -r 'Hello' .

#Por defecto, grep distingue entre mayúsculas y minúsculas (a no es lo mismo que A) 
pero puede ignorar las mayúsculas y minúsculas utilizando el interruptor i
grep -i 'lINUX' hello

#Para mostrar números de línea:
grep -n 'linux' hello

#Para mostrar líneas que no coinciden con el patrón:
grep -v 'world' hello

#Para contar el número de palabras, líneas y caracteres en un archivo, use wc hello title
wc -L hello

#para encontrar la longitud de la línea más larga en el archivo. Vamos a crear un archivo con algunos
contenidos con eco.
echo -e "col1 col2 r1\ncol5 col6 r2\ncol3 col4 r3 " >> new.txt
echo -e "Hello\nlinux\nProgrammers paradise" >> linux.txt

#Tienes dos archivos new.txt, linux.txt ahora, ¡cortémoslo!
cut -f1 -d' ' new.txt

#Como habrás notado, -f se puede usar para mencionar el número de columna y -d se usa para especificar el delimitador
cut -f3 -d' ' new.txt

#pegar fusiona las líneas de archivos
paste hello new.txt

#para pegar un archivo a la vez
paste -s hello new.txt

#Para ordenar el contenido de un archivo, podríamos usar
sort new.txt


#El contenido de los archivos está ordenado Recuerde que tenemos dos archivos new.txt y linux.txt.lets compararlos
diff hello linux.txt
diff hello linux.txt

#Compare los archivos línea por línea. <denota el primer archivo (hola) y> denota el segundo archivo 
(linux.txt). puedes comparar tres archivos con:
diff3 hello new.txt linux.txt


#Fin Lab 5