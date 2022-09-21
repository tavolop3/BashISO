#!/bin/bash

x=$1
op=$2
y=$3

if [ $# -ne 3 ]
then
	exit 1 #error
fi

#Forma: me complique la vida
resul=""
if [[ $op == ['*'] ]]
then
	resul=$(expr $x \* $y)
else
	resul=$(expr $x $op $y)
fi
echo "x $op y = $resul"

#Forma ok?
case $op in
	'*')
		echo $(expr $x \* $y)
	;;
	*)
		echo $(expr $x $op $y)
	;;
esac

