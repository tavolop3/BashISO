#!/bin/bash

vector1=(1 80 65 35 2)
vector2=(5 98 3 41 8)

len=${#vector1[@]}
for ((i=0;i<len;i++))
do
	suma=$(expr ${vector1[i]} + ${vector2[i]})
	echo "La suma de los elementos de la posicion $i de los vectores es $suma"
done
