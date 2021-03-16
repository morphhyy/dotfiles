#!/bin/sh

# systray battery icon
#cbatticon -u 5 &
# systray volume
#volumeicon &

nitrogen --restore & 
picom --experimental-backends &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
