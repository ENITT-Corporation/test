FROM fedora
COPY ./tty_gps /usr/local/bin/suncall/tty_gps
COPY ./suncall.txt /usr/local/bin/suncall/suncall.txt
CMD /usr/local/bin/suncall/tty_gps /dev/ttyUSB0 115200

