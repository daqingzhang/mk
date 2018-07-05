ifeq ($(TOPDIR),)
TOPDIR	:= $(CURDIR)/../
endif

OBJS	:= $(strip $(patsubst %.c, %.o, $(wildcard *.c)))
INCS	:= $(TOPDIR)/inc

sinclude $(TOPDIR)/config.mk

LIBS	:= $(LIB1)
CFLAGS	:= -I$(INCS) -I$(CURDIR)
CFLAGS	+= $(PLATFORM-CFLAGS)


define show-var
	@echo "CURDIR=$(CURDIR)"
	@echo "TOPDIR=$(TOPDIR)"
	@echo "MAKELEVEL=$(MAKELEVEL)"
endef

all: $(LIBS)
	$(call show-var)
	@echo "$(LIBS) build done"

$(LIBS): $(OBJS)
	$(AR) -rv $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean all

clean:
	rm -f $(OBJS) $(LIBS)
	@echo "clean done"
