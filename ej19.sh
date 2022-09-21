#!/bin/bash
#como haria con los parametros?
#no especifica

#Menu parecido al del ejemplo (me complique la vida)
#(lo salteo)
while [ false = true ]
do
	echo "MENU DE COMANDOS"
	ls -1 | nl -w 2 -s '. '
	read -p "Ingrese la opcion a ejecutar: " opcion
	if [ $opcion -eq 0 ]
       	then
	       	break
	fi
	./$(ls -1 | sed $opcion'q;d')
done

#Menu con select
while true; do #bucle para que siga mostrando el menu
	select opcion in $(ls) Salir 
	do
		case $opcion in
			"Salir")
				echo "Saliendo..."
				exit 0
			;;
			*)
				bash $opcion
				break
			;;
		esac
	done
done
