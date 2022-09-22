#!/bin/bash

push() {
	pila=(${pila[@]} $1)
}

pop() {
	unset pila[-1]
}

length() {
	return ${#pila[@]}	
}

print(){
	echo ${pila[@]}
}

pila=()
opciones=(push pop length print salir)
select opcion in ${opciones[@]}
do
	case $opcion in
		"push")
			read -p "Ingrese un valor a pushear: " val
			push $val
		;;
		"length")
			length
			echo $?
		;;
		"salir")
			echo Saliendo...
			exit 0
		;;
		*)
			$opcion
	esac
done
