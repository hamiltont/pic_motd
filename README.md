Picture Message Of the Day
--------------------------

A small program to grab an image from an Imgur
RSS feed and convert it to ASCII for use as a
message of the day.

Requirements: python2.7, lxc-docker (optional)

### Usage Without Docker

    # If you want a non-default (you probably do) then
    # set this environment variable
    $ export IMGUR_RSS="http://imgur.com/r/coffee/rss"
    $ sh build_motd.sh
    $ sudo mv image.txt /etc/issue.net

### Usage With Docker

I run this series of commands using cron:
    # JOB=$(sudo docker run -d -t -e IMGUR_RSS=http://imgur.com/r/coffee/rss -v `pwd`:/root -w=/root hamiltont/motd++:latest /bin/bash /root/build_motd.sh)
    $ sudo docker wait $JOB && sudo mv image.txt /etc/issue.net

Docker is not required, but I didn't want to install  jp2a+dependencies on my native system.
