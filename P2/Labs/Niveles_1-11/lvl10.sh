#!bin/bash
#LAB 10 - Proceso de fondo

#cuando inicio sesión y escribo ps
$ ps
  PID TTY          TIME CMD
 5254 pts/1    00:00:00 bash
 5336 pts/1    00:00:00 ps

#Creemos algunos procesos para esta sesión.
sleep 5

#Solicitud del usuario debajo de los comandos:
sleep 5
sleep 2

#Podemos poner cualquier proceso hijo en segundo plano simplemente añadiéndole & carácter
$ sleep 5 &
[1] 5781
$ sleep 2


#Simplemente inicie el proceso hijo en segundo plano y ejecute el comando 'ps'.
$ sleep 5 &
[1] 6095

$ ps
  PID TTY          TIME CMD
 5254 pts/1    00:00:00 bash
 6095 pts/1    00:00:00 sleep
 6099 pts/1    00:00:00 ps

#Tenemos un comando llamado 'pstree' que le dirá el mapeo entre el proceso hijo y padre.
$ pstree 5254
bash───pstree

#Dice, tenemos Bash y un proceso hijo llamado 'pstree'. Ejecute nuestro hijo,
$ sleep 5 &
[1] 6208
$ pstree 5254
bash─┬─pstree
     └─sleep

#pstree tiene una opción para mencionar -p que muestra pid junto al nombre del proceso.
$sleep 5 &
[1] 6272

$ pstree -p 5254
bash(5254)─┬─pstree(6276)
           └─sleep(6272)

#Digamos que hemos iniciado 4 trabajos en segundo plano de ejecución prolongada,
cada uno de los cuales se ejecuta durante 145 segundos y 1 proceso muy 
largo durante 3000 segundos.
$sleep 45 &
[1] 6393
$sleep 45 &
[2] 6397
$sleep 45 &
[3] 6401
$sleep 45 &
[4] 6406
$ sleep 3000 &
[5] 6557

$pstree -p 5254
bash(5254)─┬─pstree(6410)
       ├─sleep(6393)
       ├─sleep(6397)
       ├─sleep(6401)
       └─sleep(6406)
   ├─sleep(6557)


#Para este propósito, tenemos el comando 'trabajos' que dará una salida como:
 jobs
[1]   Running                 sleep 145 &
[2]   Running                 sleep 145 &
[3]-  Running                 sleep 145 &
[4]+  Running                 sleep 145 &
[5]+  Running                 sleep 3000 &


#Así que llevemos al proceso de primer plano. tipo, fg en nuestro caso,
necesitamos traer el trabajo de fondo-5.
fg 5
sleep 3000

#Simplemente presione 'ctrl + z'. Obtiene un resultado que dice que el trabajo está detenido.
^Z
[5]+  Stopped                 sleep 3000

#Verifique el estado comprobando la salida del comando de trabajos.
$jobs
[5]+  Stopped                 sleep 3000

#Está detenido, podemos reiniciar el proceso nuevamente en segundo plano con 'bg '
$bg 5
[5]+ sleep 3000 &

$jobs
[5]+  Running                 sleep 3000 &

#Fin Lab 10