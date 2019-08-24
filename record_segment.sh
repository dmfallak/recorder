#!/bin/bash

pkill -9 arecord

OUTPUT_FILE=`TZ=America/New_York date '+%Y-%m-%d_%H-%M-%S'`

cd /home/pi/microphone
setsid /home/pi/rec_op.sh $OUTPUT_FILE&
