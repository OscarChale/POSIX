#!bin/bash
#LAB 4 - comandos de proceso básicos


#Visualizar los procesos
ps

#La salida no es más que una instantánea de los procesos que se están ejecutando actualmente
#creemos un proceso
sleep 60 &

#Visualizemos el proceso
ps

#Veamos cómo detener / matar este proceso cambiando "12345" con el ID de tu proceso creado
kill 12345

#Revisemos de nuevo el proceso
ps


#A veces, el proceso no muere con un simple comando kill, debemos usar:
kill -9 12345

Para iniciar dos procesos:
sleep 30 &
sleep 30 &

comprobando con "ps", podemos ver que tenemos dos procesos llamados sleep, ahora escriba:
killall sleep
title: killall

#Esto mata solo los procesos propiedad del usuario "webminal"
killall -u webminal
killall -w find

#Proporciona el ID de proceso de un programa en ejecución bash
pidof bash

#devuelve solo un ID de proceso, en lugar de que todos los procesos se ejecuten como bash
pidof -s bash

#ejecuta un programa con prioridad de programación modificada. Nice ejecuta un comando con una bondad ajustada,
que afecta la programación del proceso.
nice -n 19 sleep 30 &


runs a program with modified scheduling priority. Nice runs a command with an adjusted niceness, which affects process scheduling.Nicenesses range from -20 (most favorable scheduling) to 19 (least favorable-the affected processes will run only when nothing else in the system wants to).Only root can increase the priority ,for example setting process nice to -20 others can lower the priority of processes they own.

how to adjust priority of currently running process with pid 12345?

#cambia la prioridad de los procesos en ejecución.
renice -n 19 12345

#Para ajustar la prioridad de todos los procesos propiedad de un usuario "webminal"
renice +1 -u webminal

#para mostrar el proceso en ejecución
top

#mostrar un árbol de procesos, para mostrar pid, use la opción -p con pstree.
pstree

#El siguiente comando nos permitirá saber cuánto tiempo tomó completar un comando.
pstree -p

#el tiempo proporciona estadísticas sobre el programa que ejecutó.
#real: el tiempo real transcurrido entre la invocación y la terminación.
time ls -l


#Fin Lab 4