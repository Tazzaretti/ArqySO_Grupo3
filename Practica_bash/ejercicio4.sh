#!/bin/bash

clear
echo -n "Ingrese nombre del archivo:  "
read archivo

if [-e $archivo]; then
echo $archivo " existe"

if [-b $archivo]; then
echo "Archivo especial"

elif [-c $archivo]; then
echo "Archivo de caracteres"

elif [-d $archivo]; then
echo "Directorio"

elif [-f $archivo]; then
echo "Fichero ordinario"

elif [-h $archivo]; then
echo "Archivo simbólico"

fi

if [ -r $archivo ]; then
echo "Permiso de lectura"
fi
else
echo "No existe"
fi
