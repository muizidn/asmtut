.data
.balign 4
fifteen:
	.word 15

.balign 4
thirty:
	.word 30

.text
.global _start

_start:
	ldr r1, addr_fifteen
	ldr r1, [r1]
	ldr r2, addr_thirty
	ldr r2, [r2]
	add r0, r1, r2

end:
	mov r7, #1
	swi 0

addr_fifteen: .word fifteen
addr_thirty: .word thirty

