#!/bin/bash
#make bluetooth devices browsable
#/etc/X11/xinit/xinitrc.d/*

#this makes sure we use .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -load ~/.Xresources

xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources

#sleep 30 && dropboxd &
VBoxClient-all &
#wicd-gtk --tray &
#xfce4-power-manager &
wmname LG3D &
#udiskie &

export BROWSER=firefox
DEFAULT_SESSION=twm

case $1 in
awesome)
    exec awesome -c ~/.config/awesome/rc.lua
    droboxd &
    volumeicon &
    ;;
mate)
    exec mate-session
    ;;
xfce4)
    exec startxfce4
    ;;
*)
    exec $DEFAULT_SESSION
    ;;
esac

#export DE=xfce
#exec ck-launch-session dbus-launch openbox-session
#exec ck-launch-session gnome-session
