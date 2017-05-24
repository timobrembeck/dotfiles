#!/bin/bash
 
#depends on: imagemagick, i3lock, scrot
 
SCREENSHOT=$HOME/.config/i3/i3lock/lockscreen.png
LOCK=$HOME/.config/i3/i3lock/lock.png
 
scrot $SCREENSHOT
convert $SCREENSHOT -scale 10% -scale 1000% -fill black -colorize 25% $SCREENSHOT
[ -f $LOCK ] || {
    convert -size 1080x150 xc:white -font FontAwesome -pointsize 100 -fill black -gravity center -annotate +0+0 '' $LOCK;
    convert $LOCK -alpha set -channel A -evaluate set 50% $LOCK;
}
convert $SCREENSHOT $LOCK -gravity center -composite $SCREENSHOT
i3lock -u -i $SCREENSHOT
