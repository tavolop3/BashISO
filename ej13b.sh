#!/bin/bash

echo "1-Listar 2-DondeEstoy 3-QuienEsta"
read opcion

case $opcion in
	1)ls
	;;
	2)pwd
	;;
	3)who
esac
