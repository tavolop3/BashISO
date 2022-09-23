#!/bin/bash

if [ $# -lt 1 ]
then
	echo "Tiene que ingresar al menos un parametro."
	exit 1
fi
#tambien aca se podia usar el for c-style asi no tengo que hacer un contador de posicion
for i in $@
do
	let posicion++
	if [ $(expr $posicion % 2) -eq 1 ]
	then
		if [ -e $i ]
		then
			echo "El archivo $i existe..."
			if [ -d $i ]
			then
				echo "Es un directorio" 
			else
				echo "Es un archivo"
			fi
		else
			echo "El archivo no existe."
			let inexistentes++
		fi
	fi
done
echo "La cantidad de archivos inexistentes fue de: $inexistentes"
