#!/bin/bash

overlay="$HOME/Pictures/Lockscreen/lock_speech.png"
tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% -colorize 25% "$tmpbg"
convert "$tmpbg" "$overlay" -gravity south -composite -matte "$tmpbg"
i3lock -e -i "$tmpbg"
