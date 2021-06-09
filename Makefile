
obj-m := testmgr.o

KERNELSRC := /lib/modules/`uname -r`/build

modules:
	make -C $(KERNELSRC) M=$(shell pwd)
clean:
	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
	rm -f modules.order Module.symvers
	rm -rf .tmp_versions
