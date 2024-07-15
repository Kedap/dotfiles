#!/usr/bin/env sh

MI_PUERTO=8080
MI_IP=$(ip a | grep 192 | awk '{print $2}' | sed 's/\/[0-9]*$//')
echo "Iniciando en: $MI_IP:$MI_PUERTO"
qrencode "$MI_IP:$MI_PUERTO" -o ~/tempo/codigo.png
feh ~/tempo/codigo.png &
python -m http.server $MI_PUERTO
rm ~/tempo/codigo.png
