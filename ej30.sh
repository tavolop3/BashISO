#!/bin/bash

if ! [ -d ../bin/ ]
then
	mkdir ../bin
fi	

for i in $(find -name "*.sh")
do
	mv $i ../bin/
	echo $i
	let j++
done

if [ $j -eq 0 ]
then
	echo "No se movio ningun archivo"
else
	echo "Se movieron $j archivos"
fi
