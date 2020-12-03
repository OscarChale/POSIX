#!/bin/bash

#Menú
menu(){
echo "|-----------------------|"
echo "|          EL           |"
echo "|        M E N U        |"
echo "|      de $USER      |"
echo "|-----------------------|"
echo "1. Parcial 1"
echo "2. Parcial 2"
echo "3. Parcial 3"
echo "4. Limpiar"
echo "5. Exit"

#parcial opciones
read -p "Ingrese una opción: " choice
case $choice in
		#llama a la funcion "menu_tareas"
		1)menu_tareas_P1;;
		2)menu_tareas_P2;;
		3)menu_tareas_P3;;
		4)clear
		  menu;;
		5)echo -e "\n\nGary, vuelve a casa :c \n\n"
		exit;;
		#En caso de esocger un numero diferente del 1-5
		*)clear
		 echo "¿Es neta?, dime donde hay un $choice en el menú .-."
		 menu
	esac
#Mientras "choice" sea igual a la opcion 1, va a ejecutar tareas_option
while [ "$choice" = 1 ]
do
tareas_option
done
#"Mientras choice sea..." tareas_option2
while [ "$choice" = 2 ]
do
tareas_option_P2
done
#/"Mientras choice sea..." tareas_option3
while [ "$choice" = 3 ]
do
tareas_option3
done

}
#--------------------------------------------------------------------------------#
#/menu de tareas parcial 1/
menu_tareas_P1(){
clear
echo "|--------------------|"
echo "|      PARCIAL 1     |"
echo "|--------------------|"
echo "1. Labs "
echo "2. Proyecto"
echo "3. Tareas"
echo "4. Limpiar"
echo "5. Regresar"
}
tareas_option(){
read -p "Eliga una carpeta: " choice
case $choice in
		1)menu_labs;;
		2)menu_proyecto;;
		3)menu_tareas;;
                4)clear
		  menu_tareas_P1;;
		5) clear
		   menu;;
		*)echo "brother, ¿acaso ves un $choice?"
		  tareas_option


esac
#/Mientras estemos en parcial 1, se ejecutará el script asignado a las opciones/
while [ "$choice" = 1 ]
do
lab_option
done

while [ "$choice" = 2 ]
do
proyecto_option
done

while [ "$choice" = 3 ]
do
trabajos_option
done
}

		#/MenuLabs seccion parcial 1/
menu_labs(){
clear
echo "|--------------------|"
echo "|        Labs        |"
echo "|--------------------|"
echo "1. lab1.pdf "
echo "2. lab2.pdf "
echo "3. lab3.pdf "
echo "4. lab4.pdf "
echo "5. lab5.pdf "
echo "6. Limpiar "
echo "7. Regresar "
}
#/Opciones del lab/
lab_option(){
read -p "Escoja una tarea: " choice
case $choice in
		1)echo "https://drive.google.com/file/d/1YMJTBDwPZuhMY5cPPf3yn0RO1N_ie29M/view";;
		2)echo "https://drive.google.com/file/d/146G8OgAJNGk7TjPB8rcKWojMu_gOQuJp/view";;
		3)echo "https://drive.google.com/file/d/1g9B38d2g-tIwpU71LJSH_9QscVIneM0D/view";;
		4)echo "https://drive.google.com/file/d/1_bT3KLvDkPsIM_XLDlZeQV1ihi2T36e8/view";;
		5)echo "https://drive.google.com/file/d/1fuQy5onuFcJ7191M-Fw8pFNSVrgRAfNa/view";;
		#/Regresar, jecuta 3 acciones: limpieza de consola/
		#/despliegue de un menú y ejecución de un script/
		6)clear
		  menu_labs
		  lab_option;;
		7)clear
		  menu_tareas_P1
		  tareas_option;;
		*)echo "¿tengo cara de que tengo un $choice?";;
esac
#/Mientras estemos en labs, ejecuta labs_options. Cuando ejecutes 7) al mismo/
#/tiempo ejecutas menu_tareas_P1, entonces vuelves al inicio con las opciones/
#/del menu_tareas_P1/
while true
do
lab_option
done
}
			#/menu proyecto seccion parcial 1/
menu_proyecto(){
clear
echo "|--------------------|"
echo "|       PROYECTO     |"
echo "|--------------------|"
echo "1. CIS_Ubuntu...pdf"
echo "2. Benchmarck.sh "
echo "3. Limpiar "
echo "4. Regresar "
}

#/Opciones del proyecto/
proyecto_option(){
read -p "Escoja una tarea: " choice
case $choice in
1)echo "https://drive.google.com/file/d/1izl1l_7znLu2T5psmAvN1q8P85eiCts-/view";;
2)cat "P1/Proyecto/CIS-Ubuntu-Linux-LTS-Benchmark.sh"
  echo -e "\n\nEscoja la opcion 3 para salir";;
3)clear
  menu_proyecto
  proyecto_option;;
#/Regresar, jecuta 3 acciones: limpieza de consola/
#/despliegue de un menú y ejecución de un script/
4)clear
 menu_tareas_P1
 tareas_option;;
*)echo "¿tengo cara de que tengo un $choice?";;

 esac
#/Mientras estemos en labs, ejecuta labs_options. Cuando ejecutes 7) al mismo/
#/tiempo ejecutas menu_tareas_P1, entonces vuelves al inicio con las opciones/
#/delmenu_tareas_P1/
while true
do
proyecto_option
done
}

#/Menu parcial 1/ tareas/
menu_tareas(){
clear
echo "|--------------------|"
echo "|       TAREAS       |"
echo "|--------------------|"
echo "1. Bandit.pdf "
echo "2. CmdChallenge"
echo "3. EjerciciosBandit.txt"
echo "4. Lista de comandos.txt"
echo "5. Ruta absoluta y relativa"
echo "6. Limpiar "
echo "7. Regresar "
}
#/Opciones de tareas/
trabajos_option(){
read -p "Escoja una tarea: " choice
case $choice in

1)echo "https://drive.google.com/file/d/1l8cGx219W3Y3SN3RI1Rs3mt5M73CdtNW/view";;
2)display "P1/Tareas/cmdchallenge.png";;
#/Regresar, jecuta 3 acciones: limpieza de consola #despliegue de un menú y ejecución de un/
#/script/
3)cat "P1/Tareas/EjerciciosBandit.txt";;
4)cat "P1/Tareas/ListaDeComandos.txt"
  echo -e "/n/n Escoja la opción 6 para volver";;
5)cat "P1/Tareas/RutaAbsRel.txt"
  echo -e "\n\n Esocoja opcion 6 para volver";;
6)clear
  menu_tareas;;
7)clear
  menu_tareas_P1
  tareas_option;;
*)echo "¿tengo cara de que tengo un $choice?";;
esac
#/Mientras estemos en labs, ejecuta labs_options./
#/Cuando ejecutes 7) al mismo #tiempo ejecutas menu_tareas_P1, entonces/
#/vuelves al inicio con las opciones #delmenu_tareas_P1/
while true
do
trabajos_option
done
}

#------------------------------------------------------------------------------#
#OPONES DE CARPETA PARCIAL 2
menu_tareas_P2(){
clear
echo "|--------------------|"
echo "|      PARCIAL 2     |"
echo "|--------------------|"
echo "1. Labs "
echo "2. Proyecto"
echo "3. Limpiar"
echo "4. Regresar"
}
tareas_option_P2(){
read -p "Eliga una carpeta: " choice
case $choice in
1)menu_labs_P2;;
2)menu_proyecto_P2;;
3)clear
  menu_tareas_P2
  tareas_option_P2;;
4)clear
menu;;
*)echo "brother, ¿acaso ves un $choice?"
tareas_option_P2
esac
while [ "$choice" = 1 ]
do
lab_option_P2
done
while [ "$choice" = 2 ]
do
proyecto_option_P2
done
}
              #MenuLabs seccion paricial2/

menu_labs_P2(){
clear
echo "|--------------------|"
echo "|   Webminal Labs    |"
echo "|--------------------|"
echo "1. lvl1.sh"
echo "2. lvl2.sh"
echo "3. lvl3.sh"
echo "4. ..."
echo "11. lvl11.sh"
echo "12. Evidencia en pdf"
echo "13. Limpiar"
echo "14. Regresar"
#/Opciones del lab/
}
lab_option_P2(){
read -p "Escoja una opcion (lab [1-11]): " choice
case $choice in
1) cat "P2/Labs/lvl1.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
2) cat "P2/Labs/lvl2.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
3) cat "P2/Labs/lvl3.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
4) cat "P2/Labs/lvl4.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
5) cat "P2/Labs/lvl5.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
6) cat "P2/Labs/lvl6.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
7) cat "P2/Labs/lvl7.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
8) cat "P2/Labs/lvl8.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
9) cat "P2/Labs/lvl9.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
10)cat "P2/Labs/lvl10.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
11)cat "P2/Labs/lvl11.sh"
   echo -e "\n\nEscoja la opcion 13 para salir";;
12)echo "https://drive.google.com/file/d/1M6oAJp_uelHXJwWE8jzXJrNCHs7knLf8/view";;
13)clear
   menu_labs_P2;;
14)celar
   menu_tareas_P2
   tareas_option_P2;;
*)echo "¿tengo cara de que tengo un $choice?";;

esac
while true
do
lab_option_P2
done
}
#PARCIAL 2 PROYECTO
menu_proyecto_P2(){
clear
echo "|--------------------|"
echo "| PROYECTO PARCIAL 2 |"
echo "|--------------------|"
echo "1. CIS_Ubuntu...pdf"
echo "2. Benchmarck.sh "
echo "3. Limpiar "
echo "4. Regresar "
}
#/Opciones del proyecto/
proyecto_option_P2(){
read -p "Escoja una tarea: " choice
case $choice in
1)echo "https://drive.google.com/file/d/1izl1l_7znLu2T5psmAvN1q8P85eiCts-/view";;
2)cat "P2/Proyecto/CIS-Ubuntu-Linux-LTS-Benchmark.sh"
  echo -e "\nEscoja la opcion 3 para salir";;
#/Regresar, jecuta 3 acciones: limpieza de consola/
#/despliegue de un menú y ejecución de un script/
3)clear
  menu_proyecto_P2;;
4)clear
  menu_tareas_P2
  tareas_option_P2;;
*)echo "¿tengo cara de que tengo un $choice?";;
esac #/Mientras estemos en labs, ejecuta labs_options. Cuando ejecutes 7) al mismo/
#/tiempo ejecutas menu_tareas_P1, entonces vuelves al inicio con las opciones/ #/delmenu_tareas_P1/
while true
do
proyecto_option_P2
done
}

#---------------------------------------------------------------------------------#
#OPCIONES DE CARPETA PARCIAL 3
menu_tareas_P3(){
clear
echo "|--------------------|"
echo "|      PARCIAL 3     |"
echo "|--------------------|"
echo "1. Evidencia Hackerrank"
echo "2. Herramienta instalada"
echo "3. Proyecto"
echo "4. Proyecto Menu"
echo "5. clear"
echo "6. Regresar"
}

#OPCIONES DE TAREAS PARCIAL 3
tareas_option3(){
read -p "Ingrese una tarea: " choice
case $choice in

#Primero el comando que quieres ejecutar comillas para dirigirte al directorio, al final el archivo que se quiere abrir
1)display "/home/oscar2ch/Descargas/POSIX/P3/Hackerrank/Hackerrank.png"  ;;
2)     menu_herramientas;;
3)cat "P3/Proyecto/CIS-Ubuntu-Linux-LTS-Benchmark.sh"
  echo -e "\n\n Selecciona: 5 para salir";;
4)cat "P3/ProyectoMenu/menu.sh"
  echo -e "\n\n Selecciona: 5 para salir";;
5) clear
   menu_tareas_P3
   tareas_option3;;
6) clear
   menu;;

*)echo "bro, ¿acaso ves un $choice?";;
esac
while [ "$choice" = 2 ]
do
menu_herramientas_option
done
#Mientras estemos en parcial 2, se ejecutará el script asignado a las opciones
while true
do
tareas_option3
done
}

menu_herramientas(){
clear
echo "|--------------------|"
echo "|     HERRAMIENTA    |"
echo "|--------------------|"
echo "1. Fish"
echo "2. Googlr"
echo "3. Nushell"
echo "4. Limpiar"
echo "5. Regresar"
}
menu_herramientas_option(){
read -p "Ingrese una opcion: " choice
case $choice in
		1) cat "P3/Herramienta/Fish.txt"
		   echo -e "\n\n Elige la opcion 4 para salir";;
		2) cat "P3/Herramienta/Googler.txt"
		   echo -e "\n\n Elige la opcion 4 para salir";;
		3) cat "P3/Herramienta/NuShell.txt"
		   echo -e "\n\n Elige la opcion 4 para salir";;
		4) clear
		   menu_herramientas
		   menu_herramientas_option;;
		5)clear
                  menu_tareas_P3
		  tareas_option3;;
esac
while true
do
menu_herramientas_option
done
}

#Mandar a llama el menu principal
while true
do
menu
done
