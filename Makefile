#CROSS=/home/bh92032/IMX7DL_Sabre/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/arm-linux-gnueabihf-
CC=$(CROSS)gcc
STRIP=$(CROSS)strip
CFLAGS=-I./include -I/usr/include
TARGET=/usr/local/bin

INITRD_DIR :=
INCLUDE_DIR := $(shell pwd)/include
LDFLAGS += -L$(INITRD_DIR)/usr/lib -L$(INITRD_DIR)/lib

GPS_PROG=tty_gps
GPS_OBJS=gps_main.o

all: $(GPS_PROG)

tty_gps : $(GPS_OBJS) $(EXTLIB) 
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -lrt -ldl -lm -lcurl -ljansson -o $@
	$(STRIP) $@
	chmod 755 $(GPS_PROG)
	sudo cp $(GPS_PROG) $(TARGET)

clean:
	rm -f $(GPS_PROG)
	rm -f $(OBJS)
	rm -f *.[oa] *.elf *.gdb
	rm -f core
	sudo rm -f $(TARGET)/$(GPS_PROG)
