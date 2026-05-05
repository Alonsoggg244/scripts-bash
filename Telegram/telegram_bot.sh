#!/bin/bash

# Cargar configuración (token e ID)

source /home/guillem/.telegram_bot/config

# Mensaje a enviar

MENSAJE="Hola, la fecha y hora actual es: $(date)"

# Enviar mensaje a Telegram

curl  -X POST "https://api.telegram.org/bot${TOKEN}/sendMessage" \
    -d chat_id="${CHAT_ID}" \
    -d text="${MENSAJE}" 

echo "✅ Mensaje enviado con éxito a Telegram"
