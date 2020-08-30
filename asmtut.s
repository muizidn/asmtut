.global _start

_start:
	mov r4, #1
	mov r5, #2

	stmdb sp!, {r4, r5}
	mov r4, #3
	mov r5, #4
	add r0, r4, #0
	add r0, r0, r5
	
	ldmia sp!, {r4, r5}
	add r0, r0, r4
	add r0, r0, r5

end:
	mov r7, #1
	swi 0
