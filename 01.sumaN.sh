#!/bin/bash
SUMA=0
while [ ${#} -gt 0 ]; do
    #he de afegir a la suma el valor del primer parametre
    SUMA=$((SUMA+${1}))
    #he de eliminar el primer parametre
    shift
    
done
echo "La suma val ${SUMA}"