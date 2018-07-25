OUTDIR	:= $(CURDIR)/out
OBJS	:= $(patsubst %.c,%.o,$(wildcard *.c))
DEPS	:= $(OBJS:.o=.d)

CCFLAGS := -I./ -O0 -g -Werror -Wall
LDFLAGS := -g

V	?=0

ifeq ($(V),1)
ECHO	:=@echo
else
ECHO	:=@\#
endif

all: main

main: $(OBJS)
	gcc $(LDFLAGS) -o $@ $^

%.d: %.c
	$(ECHO) "CC $@"
	gcc $(CCFLAGS) -MMD -c $< 

-include $(DEPS)

%.o: %.c
	$(ECHO) "CC $@"
	gcc $(CCFLAGS) -c $< -o $@

.PHONY: clean all
clean:
	rm -rf *.o *.d main
