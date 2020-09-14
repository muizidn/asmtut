asmtut: asmtut.o
	ld -o asmtut asmtut.o

asmtut.o: asmtut.s
	as -g -o asmtut.o asmtut.s

clean:
	rm *.o asmtut

debug: asmtut
	gdb asmtut
	
gcc:
	gcc -o asmtut asmtut.s
