#!/bin/bash

if [ $# -ne 3 ]
then
	echo "comando dir [-a o -b] CADENA"
	exit 1
fi

dir=$1
param=$2
cadena=$3

case $2 in
	"-a")
		for arch in $(ls $dir)
		do
			mv $dir/$arch $dir/$arch$cadena
		done
	;;
	"-b")
		for arch in $(ls $dir)
		do
			mv $dir/$arch $dir/$cadena$arch
		done
	;;
esac
