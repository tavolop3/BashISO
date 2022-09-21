#!/bin/bash

archivo=$1

if [ $# -ne 1 ]
then
	echo "Ingresar un solo parametro con el nombre del archivo"
	exit 1
fi

if [ -e $archivo ]
then
	echo "Existe y..."
	if [ -f $archivo ]
	then
		echo "es un archivo"
		elif [ -d $archivo ]
		then
			echo "es un directorio"
	fi
else
	echo "El archivo no existe..."
	echo "Se va a crear un directorio con ese nombre"
	mkdir $archivo
	echo "Directorio creado exitosamente."
	ls
fi

