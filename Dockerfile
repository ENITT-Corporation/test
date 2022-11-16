FROM fedora
COPY ./tty_temp /usr/local/bin/tty_temp
ENTRYPOINT ["/usr/local/bin/tty_temp","/dev/ttyUSB0","115200"]
