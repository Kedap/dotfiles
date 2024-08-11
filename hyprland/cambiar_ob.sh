#!/usr/bin/sh

opacidad=$(hyprctl -j getoptions decoration:inactive_opacity | jq .float)

if [ $(echo $opacidad | grep '0.78') ]; then
  hyprctl --batch "keyword decoration:inactive_opacity 1.0"
else
  hyprctl --batch "keyword decoration:inactive_opacity 0.78"
fi
