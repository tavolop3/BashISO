#!/bin/bash

#echo "Ingrese el primer numero (x):"
#read x
#echo "Ingrese el segundo numero (y):"
#read y

x=$1
y=$2

if [ $# -ne 2 ]
then
	exit 1 #error
fi

echo "x * y = $(expr $x \* $y)"
echo "x + y = $(expr $x + $y)"
echo "x - y = $(expr $x - $y)"

if [ $x -gt $y ]
then
	echo "x > y"
else
	if [ $y -gt $x ]
	then
		echo "y > x"
	else
		echo "x = y"
	fi
fi


