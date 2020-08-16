@ Hello this is Asmtut
/*
I am learning ARM32 assembly language
Wish me a success
*/

.text

.global _start

_start:
	mov r0, #15
	b other
	mov r0, #20	
other:
	mov r7, #1
	swi 0

