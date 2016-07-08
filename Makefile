all: libfoo.a
	gcc -o test_no_whole main.c -L. -lfoo
	gcc -o test_whole main.c -L. -Wl,-whole-archive -lfoo -Wl,-no-whole-archive

libfoo.a:
	gcc -c foo.c
	gcc -c foo1.c
	ar -crv libfoo.a foo.o foo1.o

clean:
	rm -rf *.o *.a test*
