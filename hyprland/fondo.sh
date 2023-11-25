#!/bin/sh

FONDO=$(python /home/d4n/.config/hypr/ranbg.py)
echo "${FONDO}"
swaybg -i "${FONDO}"
