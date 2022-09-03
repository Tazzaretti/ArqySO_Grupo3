#!/bin/bash
numero=0
until [ $numero -eq 5 ]; do
echo -n "Ingrese un numero:  "
read numero
if [ $numero -ne 999 ]; then
echo $numero >> numeros.txt
fi
done
echo -n "Desea ver los numeros ingresados? Ingrese s para si o n para no "
read siono
if [ $siono == "s" ]; then
echo -n "Desea verlo en orden ascendente,  descendente o establecido? ingrese a, d, o "
read visualizacion
case $visualizacion in o) cat numeros.txt;;
a) cat numeros.txt | sort -n;;
d) cat numeros.txt | sort -n -r;;
*) echo La opcion ingresada no es valida;;
esac
fi
rm numeros.txt
