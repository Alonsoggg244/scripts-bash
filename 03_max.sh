#!/bin/bash
#Control d'error
if
    [[ ${#} -eq 0 ]]; then
    echo "No hi ha cap parametre"
    exit 1
fi

MAXIM=${1}

while [ ${#} -gt 0 ]; do

    if [ ${1} -gt ${MAXIM} ]; then
        #entram si el número següent es major que el maxim
        MAXIM=${1}
    fi
    shift
done

echo "El maxim és ${MAXIM}"