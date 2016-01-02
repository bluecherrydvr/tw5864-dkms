echo '

obj-m := tw5864.o

KVERS := $(shell uname -r)
MODDIR = /lib/modules/$(KVERS)

KERNELDIR = $(MODDIR)/build
KERNELSRC = $(MODDIR)/source

export KERNELSRC

modules modules_install clean: FORCE
	$(MAKE) $(MAKEARGS) -C $(KERNELDIR) M=$(CURDIR) $@

FORCE:;
' >> Makefile

fakeroot debian/rules binary
