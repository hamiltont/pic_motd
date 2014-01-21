#!/bin/sh

mkdir -p /tmp/pic_motd
python2.7 imgur.py

if [ $? -eq 0 ]; then
    echo "Downloaded, converting to ASCII"
    jp2a --colors --width=80 /tmp/pic_motd/image.jpg > /tmp/pic_motd/image.txt && rm /tmp/pic_motd/image.jpg
    echo "Adding title and link"
    echo "`cat /tmp/pic_motd/title.txt`" >> /tmp/pic_motd/image.txt && rm /tmp/pic_motd/title.txt
    echo "Confused? Original at `cat /tmp/pic_motd/link.txt`" >> /tmp/pic_motd/image.txt && rm /tmp/pic_motd/link.txt
else
    echo "Failed to get image"
fi 
