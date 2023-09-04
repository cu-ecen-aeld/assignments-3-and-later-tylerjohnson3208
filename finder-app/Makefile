#!/usr/bin/make -f

SHELL = /bin/sh

CC = $(CROSS_COMPILE)gcc 

SRCS  = writer.c
OBJS    = $(SRCS:.c=.o)

.PHONY: all
all:   
	$(CC) -o writer writer.c

.PHONY: clean
clean:
	rm writer
