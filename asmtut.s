.global _start

_start:
	mov r1, #9
	mov r2, #8
	tst r1, r2
	beq _bit_set
	mov r0, #1
	b end

_bit_set:
	mov r0, #0

end:
	mov r7, #1
	swi 0
