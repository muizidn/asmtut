.data
numbers:
	.byte 1, 2, 3, 4, 5

.text
.global _start
_start:
	ldr r3, =numbers
	ldrb r0, [r3, #4]

end:
	mov r7, #1
	swi 0
