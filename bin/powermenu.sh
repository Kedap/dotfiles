#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# column_circle     column_square     column_rounded     column_alt
# card_circle     card_square     card_rounded     card_alt
# dock_circle     dock_square     dock_rounded     dock_alt
# drop_circle     drop_square     drop_rounded     drop_alt
# full_circle     full_square     full_rounded     full_alt
# row_circle      row_square      row_rounded      row_alt

theme="card_circle"
dir="$HOME/.config/rofi/powermenu"

# random colors
#styles=($(ls -p --hide="colors.rasi" $dir/styles))
#color="${styles[$(( $RANDOM % 8 ))]}"

# comment this line to disable random colors
#sed -i -e "s/@import .*/@import \"$color\"/g" $dir/styles/colors.rasi

# comment these lines to disable random style
#themes=($(ls -p --hide="powermenu.sh" --hide="styles" --hide="confirm.rasi" --hide="message.rasi" $dir))
#theme="${themes[$(( $RANDOM % 24 ))]}"

uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -theme $dir/$theme"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Confirmation
confirm_exit() {
  rofi -dmenu -i -no-fixed-num-lines -p "¿Estas seguro? : " \
    -theme $dir/confirm.rasi
}

# Message
msg() {
  rofi -theme "$dir/message.rasi" -e "Opciones disponibles  -  si / chi / s / no / n"
}

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 2)"
case $chosen in
$shutdown)
  ans=$(confirm_exit &)
  if [[ $ans == "si" || $ans == "SI" || $ans == "chi" || $ans == "CHI" || $ans == "shi" || $ans == "SHI" || $ans == "s" || $ans == "S" ]]; then
    systemctl poweroff
  elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
    exit 0
  else
    msg
  fi
  ;;
$reboot)
  ans=$(confirm_exit &)
  if [[ $ans == "si" || $ans == "SI" || $ans == "chi" || $ans == "CHI" || $ans == "shi" || $ans == "SHI" || $ans == "s" || $ans == "S" ]]; then
    systemctl reboot
  elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
    exit 0
  else
    msg
  fi
  ;;
$lock)
  betterlockscreen -l -u ~/Wallpapers/yosemite-lowpoly.jpg
  ;;
$suspend)
  ans=$(confirm_exit &)
  if [[ $ans == "si" || $ans == "SI" || $ans == "chi" || $ans == "CHI" || $ans == "shi" || $ans == "SHI" || $ans == "s" || $ans == "S" ]]; then
    playerctl pause
    amixer set Master mute
    systemctl suspend
  elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
    exit 0
  else
    msg
  fi
  ;;
$logout)
  ans=$(confirm_exit &)
  if [[ $ans == "si" || $ans == "SI" || $ans == "chi" || $ans == "CHI" || $ans == "shi" || $ans == "SHI" || $ans == "s" || $ans == "S" ]]; then
    session=$(loginctl session-status | head -n 1 | awk '{print $1}')
    loginctl terminate-session $session
  elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
    exit 0
  else
    msg
  fi
  ;;
esac
