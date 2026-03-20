#!/bin/bash

EPNro1_DIR="$HOME/EPNro1"

echo "Creando entorno en $EPNro1_DIR..."

if mkdir -p "$EPNro1_DIR"/{entrada,salida,procesado}; then
    touch "$EPNro1_DIR/salida/FILENAME.txt "

    if [ -f "consolidar.sh" ]; then
        echo "Copiando consolidar.sh en HOME/EPNro1 y ejecutandolo en background..."
        cp consolidar.sh "$EPNro1_DIR/"

        chmod +x "$EPNro1_DIR/consolidar.sh"

        "$EPNro1_DIR/consolidar.sh" > "$EPNro1_DIR/consolidar.log" 2>&1 &
    else
        echo "No se encontró consolidar.sh"
    fi

else
    echo "Error al crear el entorno"
fi