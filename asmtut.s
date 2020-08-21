.global _start

_start:
	adr r0, info

end:
	mov r7, #1
	swi 0

info:
	.word 10

