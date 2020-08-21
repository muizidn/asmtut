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
	mov r3, #10
	str r3, [r1]
	ldr r2, addr_thirty
	mov r3, #30
	str r3, [r2]

	LDR R1, addr_fifteen @ Load address
    	LDR R1, [R1] @ Load data using address
    	LDR R2, addr_thirty @ Load address
    	LDR R2, [R2] @ Load data using address
    	ADD R0, R1, R2

end:
	mov r7, #1
	swi 0

addr_fifteen: .word fifteen
addr_thirty: .word thirty

