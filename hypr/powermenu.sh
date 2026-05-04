#!/bin/bash

choice=$(printf "Shutdown\nReboot\nSleep\nLock\nLogout" | wofi --dmenu -p "Power Menu")

case "$choice" in
  Shutdown)
    systemctl poweroff
    ;;
  Reboot)
    systemctl reboot
    ;;
  Sleep)
    systemctl suspend
    ;;
  Lock)
    hyprlock
    ;;
  Logout)
    hyprctl dispatch exit
    ;;
esac
