all: safe_snprintf.c safe_snprintf.h 
	$(CC) -o test safe_snprintf.c safe_snprintf.h  -Wall -Wshadow -Wpointer-arith -Winline -Wunused-function -Wunused-variable -Wunused-value -Wno-unused-parameter -Wno-unused-value -Wconversion -Wsign-compare -Wstrict-prototypes -Wmissing-prototypes -Wredundant-decls -Wmissing-declarations -std=c99 -pedantic -O2 -DTEST_MAIN

test:
	./test

indent:
	indent -kr -npro -i4 -ts4 -sob -l800 -ss -ncs -cp1 --no-tabs -psl --cuddle-do-while safe_snprintf.c

clean:
	rm -f test

.PHONY : test indent clean
