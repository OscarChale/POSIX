#!bin/bash
#LAB 11 - Estados del proceso de Linux

#estados del proceso. man ps

   D    Uninterruptible sleep (usually IO)
   R    Running or runnable (on run queue)
   S    Interruptible sleep (waiting for an event to complete)
   T    Stopped, either by a job control signal.
   X    dead (should never be seen)
   Z    Defunct ("zombie") process, terminated but not reaped by its parent.

#Comenzaremos enumerando el proceso existente y sus estados mediante el comando:
ps -S

PID TTY      STAT   TIME COMMAND
16454 pts/4    Ss     0:03 bash
28682 pts/4    R+     0:00 ps -S

#Pasemos un proceso al Stoppedestado.

ps S
 PID TTY      STAT   TIME COMMAND
16454 pts/4    Ss     0:05 bash
29789 pts/4    R+     0:00 ps S

#Ahora escribe sleep 100entonces y presionaCtrl+z
 sleep 100
^Z

#Ahora, ejecutar ps muestra el siguiente resultado.
 ps S
PID TTY      STAT   TIME COMMAND
16454 pts/4    Ss     0:05 bash
29796 pts/4    T      0:00 sleep 10
29846 pts/4    R+     0:00 ps S

#Para imprimir hasta 50000 en la pantalla podemos realizar:
seq 1 500000

#Después de ejecutarlo, lo detuve a través de ctrl+z
19957
19958
19959
19960
^Z
As you can its stopped at 19960. Go ahead verify the process status via ps S command. Now its resume this stopped process via fg command. You can see its continues to print from 19961 to 50000. What? too fast and can't see its started from 19961? thats pretty bad, you need to go for eye-checkup :-)

Proceso zombie
Zombie es un proceso terminado pero no cosechado por su padre. Cuando decimos no cosechado
por su padre, queremos decir que "el padre aún no ha obtenido el estado de salida
del hijo"

    ps
      PID TTY          TIME CMD
     2249 pts/1    00:00:00 bash
     2294 pts/1    00:00:00 ps

#Vamos a crear una subcapa:
bash

Nuestra subcapa tiene pid 2498
    ps
      PID TTY          TIME CMD
     2249 pts/1    00:00:00 bash
     2498 pts/1    00:00:00 bash
     2540 pts/1    00:00:00 ps

#Lo que vamos a hacer es crear dos subcapas más y desde allí detener esta subcapa. 
con comando como:
( ( kill -STOP 2498 ) )
[1]+  Stopped                 bash

#Nuestro subshell (2498) se detiene desde su shell de nieto. 
Entonces 2498 aún debe recopilar el estado de salida de su hijo:
     ps S
      PID TTY      STAT   TIME COMMAND
     2249 pts/1    Ss     0:00 bash
     2498 pts/1    T      0:00 bash
     2547 pts/1    Z      0:00 [bash] <defunct>
     2551 pts/1    R+     0:00 ps S

#Tenga en cuenta que solo detuvimos el subshell, podemos verlos con el comando:
$ jobs
[1]+  Stopped                 bash


#Si inicia este shell bash, recopilará el estado de salida de 2547 y obtendrá su hijo.
 fg
bash

Ahora revisemos el estado:
 ps S
PID TTY      STAT   TIME COMMAND
2249 pts/1    Ss     0:00 bash
2498 pts/1    S      0:00 bash
2561 pts/1    R+     0:00 ps S

Proceso huérfano
Huérfano está ejecutando un proceso sin padres. El padre muere sin cosechar al niño (obteniendo el estado de salida del niño).
     ps S
  PID TTY      STAT   TIME COMMAND
 2249 pts/1    Ss     0:01 bash
 3325 pts/1    R+     0:00 ps S

#Crea nuestra subcapa
bash
 ps
  PID TTY          TIME CMD
 2249 pts/1    00:00:00 bash
 3329 pts/1    00:00:00 bash
 3371 pts/1    00:00:00 ps

#De la habilidad de nieto nuestro sub-caparazón 3329 donde su hijo todavía está corriendo.
 ( sleep 100 & ( kill -9 3329 ))
Killed

#Ahora verifique que la subcapa con 3329 esté realmente muerta.
 ps S
PID TTY      STAT   TIME COMMAND
2249 pts/1    Ss     0:01 bash
3376 pts/1    S      0:00 sleep 100
3381 pts/1    R+     0:00 ps S

#Adelante, verifique al padre de nuestro niño huérfano
ps -o ppid 3376
PPID
1
#Fin Lab 11