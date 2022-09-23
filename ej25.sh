#!/bin/bash

usrs=$(cat /etc/group | grep tavencio | cut -d":" -f1) 
for i in $usrs
do
	vec=(${vec[@]} $i)
done

opcion=$1
posicion=$2

#manejo los parametros
case $opcion in
	"-b")
		#validar el segundo parametro o al inicio?
		elem=${vec[posicion]}
		if [[ $elem = '' ]]
		then
			echo "Error: El elemento en la posicion $posicion no existe."
			echo "Saliendo..."
			exit 1
		fi	
		echo $elem	
	;;
	"-l")
		echo ${#vec[@]}
	;;
	"-i")
		echo ${vec[@]}
	;;
esac
