all: malloc-extra.so test

test: test.c
	gcc -o test test.c

malloc-extra.so: malloc-extra.o
	ld -shared -o malloc-extra.so malloc-extra.o -ldl

malloc-extra.o: malloc-extra.c
	gcc -Wall -fPIC -c malloc-extra.c

.PHONY: clean
clean:
	-rm *.o *.so test
