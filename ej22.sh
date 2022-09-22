#!/bin/bash

num=(10 3 5 7 9 3 5 4)
productoria() {
	prod=1
	for i in ${num[@]}
	do
		prod=$(expr $prod \* $i)		
	done
	echo $prod
}
productoria
