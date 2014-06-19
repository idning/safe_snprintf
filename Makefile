all: test

test: safe_snprintf.c safe_snprintf.h 
	$(CC) -o test safe_snprintf.c safe_snprintf.h  -Wall -std=c99 -pedantic -O2 -DTEST_MAIN
	./test

clean:
	rm -f test
