#!/bin/bash
#/home se refiere a /home del usuario o literal /home ?

existeArchivo() {
	for i in ${arr[@]}
	do
		if [ $i = $1 ]
		then
			return 0
		fi	
	done
	#Si lo encontro ya corto la ejecucion
	return 1
}

verArchivo() {
	existeArchivo $1
	if [ $? -eq 0 ]
	then
		cat $1
	else
		echo "Archivo no encontrado"
		return 5
	fi
}

cantidadArchivos() {
	echo ${#arr[@]}
}

borrarArchivo() {
	read -p "Desea eliminar el archivo logicamente?i s/n: " rta
	if [ $rta = "n" ]
	then
		existeArchivo $1
		if [ $? -eq 1 ]
		then
			echo "Archivo no encontrado"
			return 10
		else
			rm $1
		fi
	fi
	#Se elimina logicamente en cualquiera de los 2 casos
	for ((i=0;i<${#arr[@]};i++))
	do
		if [ ${arr[$i]}	= $1 ]
		then
			unset arr[$i]
			break
		fi
	done
}

arr=()
for i in $(find ~ -maxdepth 1 -name "*.doc")
do
	#arr=(${arr[@]} $i)
	#o simplemente
	arr+=($i)
done

verArchivo /home/tavencio/apa.doc
cantidadArchivos
borrarArchivo /home/tavencio/ola.doc
cantidadArchivos
