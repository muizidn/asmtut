@ Hello this is Asmtut
/*
I am learning ARM32 assembly language
Wish me a success
*/

.text

.global _start

_start:
	mov r0, #65
	bal _part2
	@ mov r7, #1
	@ swi 0
