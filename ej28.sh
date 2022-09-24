#!/bin/bash

if [ $# -ne 1 ]
then 
	exit 1
fi

contarArchivos(){
	for i in $(ls -1 $1)
	do
		if [ -f $1/$i -a -x $1/$i -a -r $1/$i ]
		then
			let cant++
		fi
	done
	echo "La cantidad de archivos en el directorio con permisos x y r:$cant"
}

dir=$1
if [ -e $dir -a -d $dir ]
then
	contarArchivos $dir	
else
	exit 4
fi




