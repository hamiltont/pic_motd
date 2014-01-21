Picture Message Of the Day
--------------------------

A small program to grab an image from any Imgur
RSS feed and convert it to ASCII for use as a
message of the day.

### Usage Without Docker

Requirements: python2.7, jp2a, python-feedparser

    # If you want a non-default RSS (you probably do) then
    # set this environment variable
    $ export IMGUR_RSS="http://imgur.com/r/coffee/rss"
    $ sh build_motd.sh
    # The result in stored in /tmp/pic_motd
    $ sudo mv /tmp/pic_motd/image.txt /etc/issue.net

### Usage With Docker

Requirements: lxc-docker

I run this series of commands using my root cron:

    $ mkdir -p /tmp/pic_motd
    $ JOB=$(docker run -d -e IMGUR_RSS=http://imgur.com/r/coffee/rss -v /tmp/pic_motd:/tmp/pic_motd hamiltont/pic-motd:latest)
    $ docker wait $JOB && mv /tmp/pic_motd/image.txt /etc/issue.net

Docker is not required, but I didn't want to install jp2a+dependencies on my native system.
