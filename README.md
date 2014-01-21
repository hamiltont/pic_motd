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


Sample Images
-------------
These samples are only black and white, in the terminal you get color codes as well!


                      .;::c0MMNkl  lo:.
                  ,o0X0kdoxkdl,'.  ,dKMN000ko'
                lNXKxloddl:,lxl;::,,. .lONWWOc;';
             cONMMMMNX0NWNKKdokNMMMMMk.   ,:dkkOO0O'
           .0MMMMMMMMMMMMMMMMMMMMMMMMM0c .; .;dckWMMO.
          :NMMMMMWKokXNMMMXk0MMMMMMMMMMMN:;lo:..oOkNMK.
         Odck;:xWKOx:;.'xd00;:KMMMMMMMWMMWXMKWOdldO:;:;
        KMWd,  .   ''.. .;'.::l;;;dOlcc:XkMMMWWWNo;l      cl.
       lM0. ...                                 ..        .:0:
      .Mxl:l.                                           ..;xXM'
      0doMKc                                            ;:.cXMX
      ,0MMMW.                                            kNWMMW
      dMMMMO                                             WMMMMN
      xMMMMX'                                           ,MMMMMX
      cMMMMMc                                          ,WMMMMM;
      :MMMMM.                                         .NMMMMMO
       XMMW,     .:xO0NMNOxxol.                       .WMMMMN.
       xMMX     .NcoXMMMMMMMO:.        .kO00Oxc,.     .MMMMMl
       .MMo       'MKclXNk.cxxN       ,XMMMMMMMMMXl    lMMMX
        WM;                ...        ;l,.0NNoXMW'..   ,MM0.
        ;M:          ...''.            .',.   ...      'MN
         0,                               .,,.         :M;
         K,                                            Kk
         o:                                           k0
         lk                                          .N'
         'W.               .lc,     ',.              ko
          kO                 .O0l;:OO;              ,W.
           Xk          .:ll:lXMMMMMMWx              Kc
           .NX:      oKMMMMMMMMMMMMMMMNko;.       oMd
            'WMX;   0MOo;;:cllkKkxxkkOOkKMMX;  d0XNc
             ;MMWk, ;,                   .ol..kMMk
              kMMMMK,      o;.oNKx,.,      .dWMMo
               lNMMMMK,    :MMMMMMMk.    .0MMMM:
                 xMMMMWk.   l0MMMMMc    .NMMMN,
                  cMMMMMNkl;.oMMMMMl.:oxMMMMx
                   .0MMMMMMMMMMMMMMMMMMMMMN;
                     .l0WMMMMMMMMMMMMMMXkl.
                         'lOXNNKOO0Ox:.

    [O][F] "Ryan Gosling" - Hey Girl, Actor, Headshot
    Confused? Original at http://i.imgur.com/csg3DUI.jpg


    ::cccllllooooooddddddxxxxxxxxdol,..'.....,,',,','.....''''''
    ::cclllloooooodddddxxxxxxkkkxxol,.,,.,'.,;;;;;;;,''''',,,,,,
    :cccllloooooddddxkOOOkkkxxxddxxxxddlc;'',,,,,;;;,',,,,,;;,,,
    ccclllooodddxkOOkdollc::::ccccc:cccloddo:,;;;;;,,'''''......
    ccllooooddxOOxocccccclcccccllccccccccccoxo'......',,,'''....
    cclooodddxkxocclllllloooooooddolllllccccod:     .;:,';;;;,,,
    ....',,,;ddollooooodddddxxxxxxxdddoooollox' .   .,:,',;,,,,,
             .dxlldddxxxxkkkkkkkkkkkkxxxdodkx;.......';,',,,;,,,
              .ckkkxxxxkkkOOOOOOOOOOkOO000kolloloooolc:'.,,,,,,'
         .   ..,cdk0KXXXXXXXXXXXNNNNNXK0kxdloK0Oxooddxoc,.......
            ....,okOO0KXNNNNWWWNNNXXKK0Okxocxk;.......,o;.. .
              ...;dO000KXNNNNNNNNNNXK00Oxdl:c..........'c....
                ..:o000XWWWNNNWWMMNKK0Okdoc...........'l'...
               . .':d0XNWWNXXXNWMMNK0Okxol;.......';:ll'....
                  .'lkKXXNKKKXXWMMN0Okkxll,',;:loodoc'... .
                 . ..cxxOKKKK0XWWWNK00xlcxOOkOkdc;...... ...
                  ....,codkOK0OKK0Oxdl:;dOdl;'......... ..
      .       ....  ....;clodxxxxdolc:'.'...............  ..
     .         .  .......';cclloolc:,.....................
    .    .. . .............,ccclc::,......... ............ ....
    .   . ....... ............'............... ......... .  .
       .......... ......................................       .
     love my new mug.
     Confused? Original at http://i.imgur.com/J0Jmgbe.jpg


