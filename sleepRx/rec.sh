#!/bin/sh
cd /tmp/
ffmpeg -f v4l2 -video_size 320x240 -i /dev/video0 $(date +"%d-%b-%Y_%H.%M.%S%p").mkv
###Use the following for DVD quality resolution (480)
#ffmpeg -f v4l2 -video_size 640x480 -i /dev/video0 $(date +"%d-%b-%Y_%H.%M.%S%p").mkv
