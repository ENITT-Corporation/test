chmod 777 /usr/local/bin/tty_gps
apt-get update
apt-get install -y curl
apt-get install -y libjansson4
./usr/local/bin/tty_gps /dev/ttyUSB0 115200