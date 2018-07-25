ifeq ($(MAKELEVEL),0)
TOPDIR	:=$(CURDIR)/..
endif

SRCS	:= $(wildcard *.c)
OBJS	:= $(SRCS:.c=.o)
INCS	:= $(TOPDIR)/inc

sinclude $(TOPDIR)/config.mk

LIBS	:= $(LIB2)
CFLAGS	:= -I$(INCS) -I$(CURDIR)
CFLAGS	+= $(PLATFORM-CFLAGS)

ifeq ($(V),1)
define sub-cmd
	 @echo "$1	$2 --> $3"
endef
else
#define sub-cmd
#endef
endif

all: $(LIBS)
	@echo "$(LIBS) build done"

$(LIBS): $(OBJS)
	@$(AR) -rv $@ $^

%.o: %.c
	$(call sub-cmd,CC,$<,$@)
	@$(CC) $(CFLAGS) -c $^ -o $@

.PHONY: clean all

clean:
	rm -rf $(OBJS) $(LIBS)
	@echo "clean done"
