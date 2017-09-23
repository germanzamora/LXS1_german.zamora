#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
RESET="\033[0m"

# Revisar que sea el usuario no sea root
if [[ 0 == $UID ]]
then
	# Inicio el codigo de color con red, luego elimino con reset
	echo -e "${RED}Usted debe ser root para correr este script${RESET}"
	exit 1

fi

#Obtencion de informacion
echo -en "Escriba su nombre completo > "
read NOMBRE
echo -en "Escriba su correo electronico > "
read EMAIL


echo "Hola $NOMBRE, este es su correo [${GREEN}$EMAIL${RESET}]? [s/n] "
read RESP

if [[ s  == $RESP ]]
then
	echo HOLA $NOMBRE,su correo es $EMAIL
fi

echo -en "${YELLOW}Agregando configuracion de git para el usuario $NOMBRE${RESET}"
sudo su - estudiantes -c "git config --global user.name \"$NOMBRE\"" 
sudo su - estudiantes -c "git config --global user.email \"$EMAIL\""
sudo su - estudiantes -c "git config --global core editor vim"
