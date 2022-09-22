#!/bin/bash

num=(10 3 5 7 9 3 5 4)
echo "Array completo: $(echo ${num[@]})"
for i in ${num[@]}
do
	if [ $(expr $i % 2) -eq 0 ]
	then
		echo $i
	else
		let cantImpares++
	fi
done
echo "La cantidad de numeros impares es: $cantImpares"
