FROM riscv64/ubuntu
COPY . /usr/local/bin/
ENTRYPOINT /usr/local/bin
CMD tty_gps /dev/ttyUSB0 115200