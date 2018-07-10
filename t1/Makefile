ifeq ($(TOPDIR),)
TOPDIR	:= $(CURDIR)/../
endif

OBJS	:= $(strip $(patsubst %.c, %.o, $(wildcard *.c)))
DEPS	:= $(strip $(patsubst %.c, %.d, $(wildcard *.c)))
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
	$(show-var)
	@echo "$(LIBS) build done"

$(LIBS): $(OBJS)
	$(AR) -rv $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.d: %.c
	$(CC) $(CFLAGS) -M $< > $@

.PHONY: clean all

clean:
	rm -f $(OBJS) $(LIBS) $(DEPS)
	@echo "clean done"
