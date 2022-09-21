#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Ingresar solo un nombre de usuario"
	exit 1
fi

usr=$1

while [ true ]
do
	#con who | cut -d" " podria tener los usuarios conectados
	who | grep $usr
	if [ $? -eq 0 ]
	then
		echo "Usuario $ust logueado en el sistema"
		break	
	fi
	sleep 10
done
