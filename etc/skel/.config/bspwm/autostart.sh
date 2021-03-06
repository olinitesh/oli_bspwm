#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Polybar
$HOME/.config/polybar/forest/launch.sh &


wmname compiz &
run numlockx on &
run start-pulseaudio-x11 &
run pamac-tray &
run pa-applet &
run clipit &
run nm-applet &
run xfce4-power-manager &
blueberry-tray &
start_conky_maia &
fix_xcursor &
/home/oli/.config/bspwm/scripts/conky_shortcuts &
conky -c /home/oli/.config/bspwm/scripts/Z333-vision.conkyrc &
run manjaro-hello &

## Load appearance settings
xsetroot -cursor_name left_ptr &

# Mailspring & Nordpass
/var/lib/snapd/snap/bin/mailspring &

## Wallpaper. Nitrogen just draws wallpaper,
#sh ~/.fehbg &
run nitrogen --restore

## Notify about package updates
update-checker 7200 &

run thunar --daemon &

## Gnome keyring
gnome-keyring-daemon &

## Polkit agent
#/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

## Reduces flicker. Disabling saves resources.
#picom -b &
picom --config $HOME/.config/picom.conf &

#/usr/lib/mate-notification-daemon/mate-notification-daemon &
/usr/lib/xfce4/notifyd/xfce4-notifyd &


## Welcome message
sleep 1 && notify-send "Welcome to Manjaro-bspwm" "Press super + F1 to show keybindings" &

#xautolock -time 10 -locker 'betterlockscreen -l dimblur' &
#$HOME/.config/polybar/forest/launch.sh &

/home/oli/.screenlayout/display.sh &

# Alter compton settings if using intel graphics
GRAPHIC_CARD=$(lspci | grep -i "vga" | sed 's/.*://' | sed 's/(.*//' | sed 's/^[ \t]*//')
if [[ $(echo $GRAPHIC_CARD | grep -i 'intel\|lenovo') != "" ]]; then MCODE='initrd=\intel-ucode.img'
  sed -i 's/"xrender"/"glx"/' ~/.config/picom.conf
  grep -q 'vsync = true;' ~/.config/picom.conf || echo 'vsync = true;' >> ~/.config/picom.conf
fi
