#!/bin/bash

echo -n "Ingrese un numero de padron:"

read NPADRON

DIR=$1

if [ -d "$DIR" ] && [ "$(ls -A "$DIR")" ]; then

	filename=$(ls -t "$DIR"/*.txt | head -n 1)
	cat "$filename" | grep "$NPADRON"

else
	echo "La carpeta no existe o la misma esta vacia."
fi
