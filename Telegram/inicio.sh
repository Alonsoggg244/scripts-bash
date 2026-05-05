#!/bin/bash

# Cargar configuración

source /home/guillem/.telegram_bot/config

# Mensaje de inicio

MENSAJE="🚀 El servidor se ha iniciado correctamente: $(date)"

# Enviar a Telegram

curl  -X POST "https://api.telegram.org/bot${TOKEN}/sendMessage" \
    -d chat_id="${CHAT_ID}" \
    -d text="${MENSAJE}" > /dev/null
