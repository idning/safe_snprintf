all: test

test: safe_snprintf.c safe_snprintf.h 
	$(CC) -o test safe_snprintf.c safe_snprintf.h  -Wall -std=c99 -pedantic -O2 -DTEST_MAIN
	./test

indent:
	indent -kr -npro -i4 -ts4 -sob -l800 -ss -ncs -cp1 --no-tabs -psl --cuddle-do-while safe_snprintf.c

clean:
	rm -f test
