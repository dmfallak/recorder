#!/bin/bash

lame --mp3input -b 8 -s 176400 --scale 8 $1 $1.lowq.mp3
sox $1.lowq.mp3 $1.dat
rm $1.lowq.mp3

tail -n+3 $1.dat > $1_nocomment.dat

rm $1.dat

gnuplot -e "infile='$1_nocomment.dat'" \
  -e "outfile='$1.png'" /home/pi/audio.gpi

rm $1_nocomment.dat

