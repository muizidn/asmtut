.global _start

_start:
	mov r7, #3
	mov r0, #0
	mov r2, #1
	ldr r1, =character
	swi 0

_uppercase:
	ldr r1, =character
	ldr r0, [r1]
	
	bic r0, r0, #32
	str r0, [r1]
_write:
	mov r7, #4
	mov r0, #1
	mov r2, #1
	ldr r1, =character
	swi 0

end:
	mov r7, #1
	swi 0

.data
character:
	.ascii " "
