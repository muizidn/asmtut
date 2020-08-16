@ Hello this is Asmtut
/*
I am learning ARM32 assembly language
Wish me a success
*/

.text

.global _start

_start:
	mov r7, #4
	mov r0, #1
	mov r2, #12
	ldr r1, =message
	swi 0

end:
	mov r7, #1
	swi 0

.data
message:
	.ascii "Hello World\n"
