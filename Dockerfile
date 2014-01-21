FROM        ubuntu:12.10
RUN         apt-get update
RUN         apt-get -y install jp2a
RUN         apt-get -y install python2.7
RUN         apt-get -y install python-feedparser

ADD         imgur.py      /motd/imgur.py
ADD         build_motd.sh /motd/build_motd.sh
ADD         LICENSE       /motd/LICENSE

WORKDIR     /motd

CMD ["/bin/bash","/motd/build_motd.sh"]
