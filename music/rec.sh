#!/bin/sh
##ffmpeg -f alsa -i sysdefault:CARD=Headset -ac 2 -c:a libvorbis -b:a 128k -ar 44100 $(date +"%d-%b-%Y_%H.%M.%S%p").ogg
cd /home/yonnlopez/Music/
#ffmpeg -f alsa -i default -threads 2  $(date+"%d-%b-%Y_%H.%M.%S%p").ogg
#ffmpeg -f alsa -i sysdefault:CARD=Headset -ac 2 -c:a libvorbis -b:a 128k -ar 44100 $(date +"%d-%b-%Y_%H.%M.%S").ogg

ffmpeg -f alsa -i pulse -c:a libvorbis -threads 2 -ac 2 $(date +"%d-%b-%Y_%H.%M.%S").ogg
#ffmpeg -f alsa -i pulse -ac 2 -c:a libmp3lame -b:a 128k "$(date)".
