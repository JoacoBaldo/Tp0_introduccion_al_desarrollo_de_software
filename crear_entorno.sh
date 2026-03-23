#!/bin/bash

Dir=$1

echo "Creando entorno en $Dir..."

if mkdir -p "$Dir"/{entrada,salida,procesado}; then
    touch "$Dir/salida/FILENAME.txt"

    if [ -f "consolidar.sh" ]; then
        echo "Copiando consolidar.sh en HOME/EPNro1..."
        cp consolidar.sh "$Dir/"

        chmod +x "$Dir/consolidar.sh"
    else
        echo "No se encontró consolidar.sh"
    fi
else
    echo "Error al crear el entorno"
fi