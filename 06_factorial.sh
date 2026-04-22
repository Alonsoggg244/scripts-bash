#!/bin/bash
# Verificar que se haya pasado al menos un parámetro
if [[ $# -eq 0 ]]; then
    echo "Has de posar al menys un paràmetre"
    exit 1
fi

# Asignar el parámetro a N
N=${1}

# Verificar que N sea menor que 25
if [ $N -ge 26 ]; then
    echo "Error: El número debe ser menor que 25."
    exit 1
fi

# Verificar que N no sea negativo
if [ $N -lt 0 ]; then
    echo "Error: No se permiten números negativos."
    exit 1
fi

echo "N és ${N}"
FACTORIAL=1

# Calcular el factorial
while [ $N -gt 0 ]; do
    FACTORIAL=$((FACTORIAL * N))
    N=$((N - 1))
done

echo "El factorial de ${1} val ${FACTORIAL}"
