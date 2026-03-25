#!/bin/bash

entrada=$1
salida=$2
procesado=$3

if [ -d "$salida" ] && [ "$(ls -A "$salida")" ]; then
    filename=$(ls -t "$salida"/*.txt | head -n 1)
else
    echo "Error: Se requiere que se envíe una carpeta SALIDA con un archivo .txt base contenido"
fi


if [ ! -d "$procesado" ]; then
    echo "Error: Se requiere que se envíe una carpeta PROCESADO"
fi

while [ -d "$entrada" ]; do
    if [ "$(ls "$entrada")" ]; then
        echo "Se han encontrado los archivos de entrada:"
        for archivo in "$entrada"/*; 
        do
            echo "$archivo"
            cat $archivo >> $filename
            mv "$archivo" "$procesado"/
        done
    fi
    sleep 2
done
echo "Error: Se requiere que se envíe una carpeta ENTRADA"
