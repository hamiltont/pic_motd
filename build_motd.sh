#!/bin/sh

python2.7 imgur.py

if [ $? -eq 0 ]; then
    echo "Success"
    jp2a --colors --width=80 image.jpg > image.txt && rm image.jpg
    echo "`cat title.txt`" >> image.txt && rm title.txt
    echo "Confused? Original at `cat link.txt`" >> image.txt && rm link.txt
else
    echo "Failed to get image"
fi 
