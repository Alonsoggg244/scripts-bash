#!/bin/bash
#Control d'error
if
    [[ ${#} -eq 0 ]]; then
    echo "Has de posar al menys un paràmetre"
    exit 1
fi

#inicialitzam a zero
SUMA=0
#guardar la quantitat de números
QUANTS=${#}

while [ ${#} -gt 0 ]; do
    #he de afegir a la suma el valor del primer parametre
    SUMA=$((SUMA+${1}))
    #he de eliminar el primer parametre
    shift
    
done

#aqui SUMA conté la suma dels parametres
#la mitjana es dividir la suma entre parametres
MITJANA=$((SUMA/QUANTS))
echo "La media val ${MITJANA}"