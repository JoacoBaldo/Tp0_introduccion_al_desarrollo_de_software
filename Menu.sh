#!/bin/bash

EPNro1_DIR=$HOME/EPNro1

if [ "$1" == "-d" ]; then
rm -rf ~/EPNro1
pkill -f "$EPNro1_DIR/consolidar.sh"
exit
fi

echo "Menu:"
echo "1) - Crear un entorno"
echo "2) - Correr proceso"
echo "3) - Lista de alumnos (por número de padrón)"
echo "4) - Mostrar las 10 notas más altas"
echo "5) - Datos desde el padrón (Se necesita su número tras seleccionar la opción)"
echo "6) - Salir"

echo "Ingrese la opción a elegir: "
read opcion

chmod +x *.sh
case $opcion in
    1)
    bash crear_entorno.sh "$EPNro1_DIR";;

    2)
    bash "$EPNro1_DIR/consolidar.sh" "$EPNro1_DIR/entrada" "$EPNro1_DIR/salida" "$EPNro1_DIR/procesado">"$EPNro1_DIR/consolidar.log" 2>&1 &;;

    3)
    bash listar_por_padron.sh "$EPNro1_DIR/salida";;

    4)
    bash listar_por_notas.sh "$EPNro1_DIR/salida";;

    5)
    bash datos_usuario.sh "$EPNro1_DIR/salida";;

    6)
    pkill -f "$EPNro1_DIR/consolidar.sh"
    exit;;
esac