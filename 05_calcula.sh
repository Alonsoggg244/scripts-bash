#!/bin/bash
#Control d'error
if
    [[ ${#} -eq 0 ]]; then
    echo "No hi ha cap parametre"
    exit 1
fi

# Guardem l'operació i eliminem el primer paràmetre
OPERACIO=${1}
shift

#Fem un case per tenir moltes operacións posibles
#En un case per finalitzar una operació s'usa els ;; y per finalitzar el case s'usa el esac
case ${OPERACIO} in
    Suma)
        SUMA=0
        while [ ${#} -gt 0 ]; do
            SUMA=$((SUMA + ${1}))
            shift
        done
        echo "La suma total és: ${SUMA}"
    ;;

    Mitjana)
        SUMA=0
        QUANTS=${#}
        while [ ${#} -gt 0 ]; do
            SUMA=$((SUMA + ${1}))
            shift
        done
        MITJANA=$((SUMA / QUANTS))
        echo "La mitjana de ${QUANTS} valors és: ${MITJANA}"
    ;;

    Maxim)
        MAXIM=${1}
        shift
        while [ ${#} -gt 0 ]; do
            if [ ${1} -gt ${MAXIM} ]; then
                MAXIM=${1}
            fi
            shift
        done
        echo "El màxim és: ${MAXIM}"
    ;;

    Parells/Senars)
        PARES=0
        IMPARES=0
        while [ ${#} -gt 0 ]; do
            if [ $((${1} % 2)) -eq 0 ]; then
                PARES=$((PARES + 1))
            else
                IMPARES=$((IMPARES + 1))
            fi
            shift
        done
        echo "Pares: ${PARES}"
        echo "Impares: ${IMPARES}"
    ;;

    *)
        echo "Operació desconeguda '${OPERACIO}'"
        echo "Operacions disponibles: Suma, Mitjana, Maxim, Parells/Senars"
        exit 1
        ;;
esac
