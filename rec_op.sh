#!/bin/bash

arecord -v -d 902 -r 44100 -D hw:1,0 -t raw -f S16_LE | \
  lame -m m -r -b 64 --scale 4 - $1.mp3

/home/pi/renderaudio.sh $1.mp3
