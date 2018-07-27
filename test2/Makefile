OUTDIR	:= $(CURDIR)/out
OBJS	:= $(patsubst %.c,%.o,$(wildcard *.c))
DEPS	:= $(OBJS:.o=.d)

CCFLAGS := -I./ -O0 -g -Werror -Wall
LDFLAGS := -g

V	?=1

ifeq ($(V),1)
ECHO	:=@echo
else
ECHO	:=@\#
endif

####################################################

# $(subst from,to,text)
# $(findstring find,in)
# $(filter patern, text)


# $(foreach var, list, text)
#-------------------------------------------
# for(i = 0; i < length(list);i++)
#	var = list[i];
#	text();
############################################

STAR	:=helloworld
STAR2	:=$(subst l,m,$(STAR))
STAR3	:=$(findstring world, $(STAR))

STAR4	:=a.c b.c c.o d.o
STAR5	:=$(filter %.c, $(STAR4))
STAR6	:=$(foreach f,$(STAR4),$(f)-)
STAR7	:=$(shell cat test.h)

STAR8	:=./out/a
STAR8	:=$(shell mkdir -p $(STAR8) && cd $(STAR8) && /bin/pwd)

ifeq (1,1)
$(info information)
else
$(error err occur)
endif

####################################################
# func($1,$2)
#-------------------------------------------
define func
	@echo "param1: $1"
	@echo "param2: $2"
endef
####################################################

all: main

main: $(OBJS)
	gcc $(LDFLAGS) -o $@ $^

test:
	@echo "$(STAR)"
	@echo "$(STAR2)"
	@echo "$(STAR3)"
	@echo "$(STAR5)"
	@echo "$(STAR6)"
	$(call func,abc,def)
	@echo "$(origin STAR)"
	@echo "$(origin STARX)"
	@echo "$(STAR7)"
	@echo "$(STAR8)"

%.d: %.c
	$(ECHO) "CC $@"
	gcc $(CCFLAGS) -MMD -c $< 

-include $(DEPS)

%.o: %.c %.d
	$(ECHO) "CC $@"
	gcc $(CCFLAGS) -c $< -o $@

.PHONY: clean all tags tar install

clean:
	rm -rf *.o *.d main

tags:
	ctags -R

tar:
	tar -cvjf test.tar.bz2 *

install:
	mkdir -p bin
	cp -rp main bin/
