#!/bin/bash
#hay que validar los parametros en cada una de las funciones?
inicializar() {
	array=()
}

agregar_elem() {
	array=(${array[@]} $1)
}

eliminar_elem() {
	if [ ${array[$1]} != '' ]
	then
		unset array[$1]
	else
		echo "Posicion invalida."
	fi
}

longitud() {
	echo ${#array[@]}
}

imprimir() {
	echo ${array[@]}
}

inicializar_Con_Valores() {
	for ((i=0;i<$1;i++))
	do
		agregar_elem $2
	done	
}

#testeo
inicializar
inicializar_Con_Valores 10 3
imprimir
longitud
eliminar_elem 4
imprimir
longitud
