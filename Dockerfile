FROM fedora
COPY . /usr/local/bin/suncall
ENTRYPOINT /usr/local/bin
CMD tty_gps /dev/ttyUSB0 115200