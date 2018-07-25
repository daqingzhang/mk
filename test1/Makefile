
ifeq ($(MAKELEVEL),0)
TOPDIR	:= $(CURDIR)
else
TOPDIR	:= ./
endif

export TOPDIR

include $(TOPDIR)/config.mk

SUBDIR	:= $(TOPDIR)/$(LIB1DIR)
SUBDIR	+= $(TOPDIR)/$(LIB2DIR)

define sub-make
	for i in $(SUBDIR); do \
		$(MAKE) -C $$i; \
	done;
endef

define sub-clean
	for i in $(SUBDIR); do \
	$(MAKE) -C $$i clean; \
	done;
endef

OBJS	:=$(patsubst %.c,%.o,$(wildcard *.c))

CFLAGS	:= -I$(TOPDIR)/$(LIB1DIR) -I$(TOPDIR)/$(LIB2DIR)
CFLAGS	+= $(PLATFORM-CFLAGS)
LDFLAGS	:= -L$(TOPDIR)/$(LIB1DIR) -L$(TOPDIR)/$(LIB2DIR)

all: libs $(APP)
	@echo ""
	$(shell env)
	@echo ""
	@echo "make done !"

$(APP): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ -la -lb

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

libs:
	$(call sub-make)

.PHONY:	clean clean-test clean-libs libs all

clean-test:
	rm -rf *.o $(APP)
clean-libs:
	$(call sub-clean)

clean: clean-test clean-libs
	@echo "clean done !"
