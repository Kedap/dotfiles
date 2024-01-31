#!/bin/sh

FONDO=$(python /home/kedap/.config/hypr/ranbg.py)
echo "${FONDO}"
swaybg -i "${FONDO}"
