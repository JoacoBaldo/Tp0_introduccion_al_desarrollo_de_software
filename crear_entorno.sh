#!/bin/bash

EPNro1_DIR="$HOME/EPNro1"

echo "Creando entorno en $EPNro1_DIR..."

if mkdir -p "$EPNro1_DIR"/{entrada,salida,procesado}; then
    echo "Copiando consolidar.sh en HOME y ejecuandolo en background..."
    cp consolidar.sh "$EPNro1_DIR/"
else
    echo "Error al crear el entorno"
fi