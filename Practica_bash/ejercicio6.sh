#! /bin/bash
intento=1
restantes=3
while [ $restantes -gt 0 ]; do

echo -n cuanto es 2+2?:
read resultado

if [ $resultado -eq 4 ]; then
echo “El resultado es correcto ” $intentos
exit

else
restantes=$(($restantes - 1))
if [ $restantes -ne 0 ]; then
echo “$restantes intentos restantes”
fi

intento=$(($intento + 1))
fi
done
echo "Todas las respuestas fueron incorrectas, burro"

