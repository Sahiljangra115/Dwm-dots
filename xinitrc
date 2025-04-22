#!/bin/sh

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/usr/local/bin"
wal -n -i ~/Pictures/village-8663792_1920.jpg &
[ -f ~/.Xresources ] && xrdb ~/.Xresources
feh --bg-scale ~/Pictures/village-8663792_1920.jpg &
picom --config ~/.config/picom/picom.conf &
slstatus &
exec dwm
