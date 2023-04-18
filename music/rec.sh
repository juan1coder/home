#!/bin/sh
###Choosee syscardefault when using alsa by default on puppy linux.
##ffmpeg -f alsa -i sysdefault:CARD=Headset -ac 2 -c:a libvorbis -b:a 128k -ar 44100 $(date +"%d-%b-%Y_%H.%M.%S%p").ogg
cd ~/Music/
ffmpeg -f alsa -i default -c:a libvorbis -threads 2 -ac 2 $(date +"%d-%b-%Y_%H.%M.%S").ogg
