#!/bin/sh
##ffmpeg -f alsa -i sysdefault:CARD=Headset -ac 2 -c:a libvorbis -b:a 128k -ar 44100 $(date +"%d-%b-%Y_%H.%M.%S%p").ogg
cd /tmp/
ffmpeg -f v4l2 -video_size 320x240 -i /dev/video0 $(date +"%d-%b-%Y_%H.%M.%S%p").mkv
#ffmpeg -f v4l2 -video_size 640x480 -i /dev/video0 $(date +"%d-%b-%Y_%H.%M.%S%p").mkv

#ffmpeg -f alsa -i sysdefault:CARD=Headset -ac 2 -c:a libvorbis -b:a 128k -ar 44100 $(date +"%d-%b-%Y_%H.%M.%S").ogg

#ffmpeg -f alsa -i pulse -c:a libvorbis -b:a 128k -ar 44100 -ac 2 "$(date)".oga
#ffmpeg -f alsa -i pulse -ac 2 -c:a libmp3lame -b:a 128k "$(date)".
