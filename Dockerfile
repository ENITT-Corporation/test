FROM fedora
COPY ./tty_gps /usr/local/bin/suncall/tty_gps
COPY ./suncall.txt /usr/local/bin/suncall/suncall.txt
ENTRYPOINT ["/bin/bash"]
cmd vi /usr/local/bin/suncall/suncall.txt

