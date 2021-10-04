#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/forest"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar  ---------------------------------------
#polybar -q main -c "$DIR"/config.ini &

desktop=$(echo $DESKTOP_SESSION)
count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)


case $desktop in

    bspwm|/usr/share/xsessions/bspwm)
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload main -c "$DIR"/config.ini &
      done
    else
    polybar --reload main -c "$DIR"/config.ini &
    fi
    ;;
esac
