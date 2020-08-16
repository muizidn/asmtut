@ Hello this is Asmtut
/*
I am learning ARM32 assembly language
Wish me a success
*/

.text

.global _start

_start:
	mov r1, #15
	mov r2, #10
	cmp r1, r2
	beq val_equal @ zero flag set
	bgt r1_gt @ r1 greater, negative flag set

r1_lt:
	mov r0, #-1
	b end

r1_gt:
	mov r0, #1
	b end

val_equal:
	mov r0, #0
	b end

end:
	mov r7, #1
	swi 0

