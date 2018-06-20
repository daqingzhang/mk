OBJS	:=$(strip $(patsubst %.c, %.o, $(wildcard *.c)))
TGT		:=test
CC		:=gcc

include config.mk

SUBDIRS	:= t1 t2

.PHONY: clean sub-make $(SUBDIRS)

export MAKEFILES=helloworld
export MAKEFLAGS=abc
export LOCAL_VAR=def

$(TGT): $(OBJS) sub-make
	$(CC) -o $@ $<
	$(ECHO) "DDD=$(?)"
	$(ECHO) "CURDIR=$(CURDIR)"
	$(ECHO) "MAKE=$(MAKE)"
	$(ECHO) "MAKEFLAGS=$(MAKEFLAGS)"
	$(ECHO) "MAKEFILES=$(MAKEFILES)"
	$(ECHO) "MAKEFILE_LIST=$(MAKEFILE_LIST)"
	$(ECHO) "TTT=$(TTT)"
	$(ECHO) "LOCAL_VAR=$(LOCAL_VAR)"
	$(ECHO) "compile done"


sub-make: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

#t1: t2

%.o: %.c
	$(CC) -c -g -o $@ $<


clean: sub-clean
	rm -rf $(OBJS) $(TGT)
	@echo "clean done"

sub-clean:
	@for dirs in $(SUBDIRS); do \
	$(MAKE) -C $$dirs clean; \
	done;

