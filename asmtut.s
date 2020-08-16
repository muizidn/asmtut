@ Hello this is Asmtut
/*
I am learning ARM32 assembly language
Wish me a success
*/

.text

.global _start

_start: @read
	mov r7, #3
	mov r0, #0
	mov r2, #10
	ldr r1, =message
	swi 0

_write:
	mov r7, #4
	mov r0, #1
	mov r2, #5
	ldr r1, =message
	swi 0

end:
	mov r7, #1
	swi 0

.data
message:
	.ascii " " @ must " " rather than "" ? do research!
