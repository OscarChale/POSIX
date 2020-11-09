#!bin/bash

#LAB 9 - Comandos b�sicos del proceso de Linux

#La forma correcta es usar el comando
hostname

#Utilice el comando 'file' que aprendi� en lecciones anteriores.
file /bin/hostname

#Te dice lo siguiente:
*/bin/hostname: ELF 32-bit LSB executable, Intel 80386, 
version 1 (SYSV), dynamically linked (uses shared libs), 
for GNU/Linux 2.6.18, stripped*

#Estas instrucciones ser�n del n�cleo para realizar alguna tarea
 o acci�n.Por lo tanto es un archivo ejectuable y se tiene que 
usar otro comando.
cat /bin/hostname

#Aqu� est� nuestra definici�n de proceso.
"Process is nothing but a  file-content which is residing in RAM"
#Aqu�, an instance of a computer programsignifica que reside en 
la RAM y being executedsignifica que Kernel sigue sus instrucciones.
"In computing, a process is an instance of a computer program 
that is being executed."

#'ps' mostrar� archivos en RAM
ps

#Nos dio esta salida
*`
 PID TTY          TIME CMD
27447 pts/9    00:00:00 bash
29731 pts/9    00:00:00 ps
`*
#Comprender m�s sobre el proceso:

#Tiene 4 campos PID(cada proceso tiene asignado un n�mero �nico), 
#TTY(su terminal asignada al proceso), TIME(el tiempo que tardo en
#instalar la ejecucion la CPU), CMD(u�l es el nombre del archivo 
#ejecutable que reside actualmente en la memoria).

#Proceso padre:

#El �nico trabajo de este tipo es observar cualquier entrada 
#(en TTY) y analizar y decirle a Kernel si Kernel necesita tomar 
#alguna acci�n en la solicitud de entrada. El shell Bash asigna 
#tareas a Kernel que trabaja de manera pobre. Y el Kernel decide 
#si completar la tarea o rechazarla en funci�n de esta propia 
#evaluaci�n. 

#Ahora escribe 'ps' de nuevo.
*`
  PID TTY          TIME CMD
27447 pts/9    00:00:00 bash
31400 pts/9    00:00:00 bash
31414 pts/9    00:00:00 ps
`*

#Con ps podemos pasar una opci�n '-o ppid' para obtener el id 
#del padre. 
ps  - O  ppid  31400 
*`
 PPID
27447
`*
#Tambi�n puede imprimir el nombre como
ps -o ppid,cmd 31400

*`
 PPID CMD
27447 bash
`*

#Para encontrar al abuelo
ps -o ppid,cmd 27447

#Nota:Si sigues repitiendo esto, terminar�s en '1'. 
#que es el padre de todos los initprocesos. Se llama proceso �nico  
#Fin Lab 9