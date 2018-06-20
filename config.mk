V	?=	0

ifeq ($(V),1)
ECHO	:= echo
else
ECHO	:= @echo
endif

TTT=$(MAKEFILE_LIST)
