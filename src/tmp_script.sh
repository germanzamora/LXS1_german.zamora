#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
RESET="\033[0m"

# Revisar que sea el usuario root
if [[ 0 != $UID ]]
then
	# Inicio el codigo de color con red, luego elimino con reset
	echo -e "${RED}Usted debe ser root para correr este script${RESET}"
	exit 1

fi

echo Hola $USER 



