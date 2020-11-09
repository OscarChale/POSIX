#!bin/bash

#LAB 9 - Comandos básicos del proceso de Linux

#La forma correcta es usar el comando
hostname

#Utilice el comando 'file' que aprendió en lecciones anteriores.
file /bin/hostname

#Te dice lo siguiente:
*/bin/hostname: ELF 32-bit LSB executable, Intel 80386, 
version 1 (SYSV), dynamically linked (uses shared libs), 
for GNU/Linux 2.6.18, stripped*

#Estas instrucciones serán del núcleo para realizar alguna tarea
 o acción.Por lo tanto es un archivo ejectuable y se tiene que 
usar otro comando.
cat /bin/hostname

#Aquí está nuestra definición de proceso.
"Process is nothing but a  file-content which is residing in RAM"
#Aquí, an instance of a computer programsignifica que reside en 
la RAM y being executedsignifica que Kernel sigue sus instrucciones.
"In computing, a process is an instance of a computer program 
that is being executed."

#'ps' mostrará archivos en RAM
ps

#Nos dio esta salida
*`
 PID TTY          TIME CMD
27447 pts/9    00:00:00 bash
29731 pts/9    00:00:00 ps
`*
#Comprender más sobre el proceso:

#Tiene 4 campos PID(cada proceso tiene asignado un número único), 
#TTY(su terminal asignada al proceso), TIME(el tiempo que tardo en
#instalar la ejecucion la CPU), CMD(uál es el nombre del archivo 
#ejecutable que reside actualmente en la memoria).

#Proceso padre:

#El único trabajo de este tipo es observar cualquier entrada 
#(en TTY) y analizar y decirle a Kernel si Kernel necesita tomar 
#alguna acción en la solicitud de entrada. El shell Bash asigna 
#tareas a Kernel que trabaja de manera pobre. Y el Kernel decide 
#si completar la tarea o rechazarla en función de esta propia 
#evaluación. 

#Ahora escribe 'ps' de nuevo.
*`
  PID TTY          TIME CMD
27447 pts/9    00:00:00 bash
31400 pts/9    00:00:00 bash
31414 pts/9    00:00:00 ps
`*

#Con ps podemos pasar una opción '-o ppid' para obtener el id 
#del padre. 
ps  - O  ppid  31400 
*`
 PPID
27447
`*
#También puede imprimir el nombre como
ps -o ppid,cmd 31400

*`
 PPID CMD
27447 bash
`*

#Para encontrar al abuelo
ps -o ppid,cmd 27447

#Nota:Si sigues repitiendo esto, terminarás en '1'. 
#que es el padre de todos los initprocesos. Se llama proceso único  
#Fin Lab 9