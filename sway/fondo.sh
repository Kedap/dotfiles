#!/bin/sh

FONDO=$(python /home/sno0bwy/.config/sway/ranbg.py)
echo "${FONDO}"
swaymsg "output * bg "${FONDO}" fill"
