.data
primes:
	.word 2
	.word 3
	.word 5
	.word 7

.text
.global _start
_start:
	ldr r3, =primes
	ldr r0, [r3, #8]

end:
	mov r7, #1
	swi 0
