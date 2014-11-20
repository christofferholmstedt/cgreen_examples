all:
	gcc -c -fdump-rtl-expand all_tests.c
	gcc -c -fdump-rtl-expand words_test.c
	gcc -c -fdump-rtl-expand words.c
	gcc all_tests.o words_test.o words.o -lcgreen -o all_tests.run

clean:
	rm -f *.o
	rm -f *.run
	rm -f *.expand
	rm -f *.ps
