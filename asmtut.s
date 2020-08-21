.data
.balign 4
info:
	.word 10

.text
.global _start

_start:
	ldr r3, =info
	mov r4, #100
	str r4, [r3]
	ldr r0, [r3]

end:
	mov r7, #1
	swi 0
