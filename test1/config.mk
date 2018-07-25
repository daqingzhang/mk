
PLATFORM:=
CC		:=$(PLATFORM)-gcc
AR		:=$(PLATFORM)-ar
GDB		:=$(PLATFORM)-gdb
NM		:=$(PLATFORM)-nm
LD		:=$(PLATFORM)-ld
OBJDUMP	:=$(PLATFORM)-objdump

PLATFORM-CFLAGS	:= -O0 -g -Wall -Werror

LIB1	:= liba.a
LIB2	:= libb.a
LIB1DIR	:= t1
LIB2DIR := t2
APP		:= test
