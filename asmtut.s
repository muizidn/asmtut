.global _start

_start:
	mov r0, #50
	
decrement:
	sub r0, r0, #3


loop:
	cmp r0, #5
	bgt decrement

end:
	mov r7, #1
	swi 0
