CC=gcc
BPATH=./bin
SPATH=./src
LPATH=./lib
INCLUDE=-I./include
LDFLAGS=-lm
CFLAGS=-Wall -DNDEBUG -O3 $(INCLUDE) -fpic

prog : $(BPATH)/prog.o $(BPATH)/matrix.o $(BPATH)/vector.o $(LPATH)/libmat.a
	$(CC) $^ -o $@ $(LDFLAGS)

$(BPATH)/%.o : $(SPATH)/%.c
	$(CC) -c $< -o $@ $(INCLUDE)

lib/libmat.a : $(BPATH)/matrix.o $(BPATH)/vector.o
	ar crs $@ $^

doc :
	doxygen doc/Doxyfile

clean :
	rm -rf $(BPATH)/* $(LPATH)/* doc/*

# Dans le cas où un fichier se nomme clean.c on peut quand même executer "make clean"
.PHONY: clean doc

