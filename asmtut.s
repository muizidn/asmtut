.global _start
_start:
	mov r0, #two

end:
	mov r7, #1
	swi 0

.data
.equ two, 2
