#!bin/bash
#LAB 8 - Detalles del sistema y del usuario


#Utilice el siguiente comando para averiguar cuánto tiempo ha estado funcionando este sistema:
uptime

#Para saber la fecha y hora actuales:
date


#Para mostrar detalles sobre los usuarios registrados actualmente
who

#puedes ver otros usuarios de linux
who -a

#imprimir información sobre los usuarios que están conectados actualmente al sistema
w

#Muestra la lista del sistema de archivos montado
mount

#proporciona una lista de sistemas de archivos montados, para ver
solo el sistema de archivos ext4
mount -t ext4

#para mostrar el espacio libre en disco en los dispositivos montados
df -h
title: df

#-h switch hace que la salida sea más complicada para los humanos.
Entonces encontramos que df encuentra el uso del disco
free -m

#Fin Lab 8