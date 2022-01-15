#MAkefile for a basic Kernel module

obj-m += ext_sensor_driver.o
KDIR := /work/achroimx6q/kernel
all :
	make -C $(KDIR) SUBDIRS=$(PWD) modules

app:
	arm-none-linux-gnueabi-gcc ext_sensor_app.c -o ext_sens_test -static

install :
	cp -a *.ko /nfsroot/
	cp -a *test /nfsroot/

clean :
	rm -rf *.ko
	rm -rf *.mod*
	rm -rf .*.cmd
	rm -rf Module.symvers
	rm -rf modules.order
	rm -rf *.o
	rm -rf ext_sens_test
