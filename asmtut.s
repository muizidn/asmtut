@ Hello this is Asmtut
/*
I am learning ARM32 assembly language
Wish me a success
*/

.text

.global _start

_start:
	mov r1, #15
	mov r2, #0xA @ 10
	sub r0, r1, r2
	
end:
	mov r7, #1
	swi 0

