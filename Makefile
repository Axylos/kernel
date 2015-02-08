obj-m += hello.o
BUILD_DIR ?= /lib/modules/$(shell uname -r)/build

all:
	make -C $(BUILD_DIR) M=$(PWD) modules
	sudo /sbin/insmod hello.ko

clean:
	make -C $(BUILD_DIR) M=$(PWD) clean
	sudo /sbin/rmmod hello.ko
