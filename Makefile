obj-m += hello.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	sudo /sbin/insmod hello.ko

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	sudo /sbin/rmmod hello.ko
