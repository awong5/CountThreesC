#!/usr/bin/make -f

SHELL=/bin/sh

.SUFFIXES:
.SUFFIXES: .c .o

# src directory contains .c and .h files
OBJDIR = src

# object files
objects = countThrees.o readInt32BitLE.o

countThrees : $(objects)
	cc -o countThrees $(objects)
readInt32BitLE.o : $(OBJDIR)/readInt32BitLE.c $(OBJDIR)/readInt32BitLE.h
	cc -c $(OBJDIR)/readInt32BitLE.c
countThrees.o : $(OBJDIR)/countThrees.c
	cc -c $(OBJDIR)/countThrees.c

# run compiled executable countThrees
.PHONY : test
test :
	./countThrees

.PHONY : clean
clean : 
	-rm $(objects)
