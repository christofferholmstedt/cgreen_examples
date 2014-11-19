all:
	gcc -c words_test.c
	gcc -c all_tests.c
	gcc words_test.o all_tests.o -lcgreen -o all_tests.run

clean:
	rm -f *.o
	rm -f *.run
