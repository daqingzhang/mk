objs	:= $(strip $(patsubst %.c, %.o, $(wildcard *.c)))

all: $(objs)
	@echo "CURDIR=$(CURDIR)"
	@echo "MAKEFILES=$(MAKEFILES)"
	@echo "MAKEFLAGS=$(MAKEFLAGS)"
	@echo "LOCAL_VAR=$(LOCAL_VAR)"
	@echo "MAKELEVEL=$(MAKELEVEL)"
	@echo "$(objs)"
	@echo "t1 build done"

%.o: %.c
	gcc -c -o $@ $<

.PHONY: clean

clean:
	rm -f $(objs)
	@echo "t1 clean done"
