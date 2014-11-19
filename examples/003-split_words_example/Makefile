all:
	gcc -c all_tests.c
	gcc -c words_test.c
	gcc -c words.c
	gcc all_tests.o words_test.o words.o -lcgreen -o all_tests.run

clean:
	rm -f *.o
	rm -f *.run
