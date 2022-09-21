#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Tiene que ingresar un unico parametro, la extension"
	exit 1
fi

extension=$1

for usr in $(cat /etc/passwd | cut -d: -f1)
do
	dir=$(sudo find /home -user $usr -name "*.$extension" | wc -l)
	echo "$usr-$dir" >> reporte.txt
done

