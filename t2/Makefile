SRCS	:= $(wildcard *.c)
OBJS	:= $(SRCS:.c=.o)
INCS	:= $(TOPDIR)/inc

sinclude $(TOPDIR)/config.mk

LIBS	:= $(LIB2)
CFLAGS	:= -I$(INCS) -I$(CURDIR)
CFLAGS	+= $(PLATFORM-CFLAGS)

all: $(LIBS)
	@echo "$(LIBS) build done"

$(LIBS): $(OBJS)
	$(AR) -rv $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@

.PHONY: clean all

clean:
	rm -rf $(OBJS) $(LIBS)
	@echo "clean done"
