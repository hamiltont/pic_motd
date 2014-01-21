FROM        ubuntu:12.10
RUN         apt-get update
RUN         apt-get -y install jp2a
RUN         apt-get -y install python2.7
RUN         apt-get -y install python-feedparser
