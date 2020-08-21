.global _start

_start:
	mov r0, #50
	mov r1, #2
	b _loop

_decrement:
	subgt r0, r0, r1

_loop:
	cmp r0, r1
	bne _decrement

end:
	mov r7, #1
	swi 0
