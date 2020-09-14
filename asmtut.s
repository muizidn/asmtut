.data

.balign 4
get_val_1: .asciz "Number 1:\n"

.balign 4
get_val_2: .asciz "Number 2:\n"

.balign 4
pattern: .asciz "%d"

.balign 4
num_1: .word 0

.balign 4
num_2: .word 0

.balign 4
sum: .word 0

@output for printf
.balign 4
output: .asciz "%d + %d = %d\n"

@used for backing up the link register
.balign 4
lr_bu: .word 0

.balign 4
lr_bu_2: .word 0

.text

@create our custom function
@can receive values r0-r3
sum_vals:
	@save link register
	ldr r2, addr_lr_bu_2
	str lr, [r2]

	@sum values and return in r0
	add r0, r0, r1
	
	@restore link register
	ldr lr, addr_lr_bu_2
	ldr lr, [lr]
	bx lr

@address to store link register in
addr_lr_bu_2: .word lr_bu_2

@tell libc where main is
.global main

main:
	@store link register
	ldr r1, addr_lr_bu
	str lr, [r1]
	
	@print out message to get 1st value
	ldr r0, addr_get_val_1
	bl printf

	@save value enterd
	ldr r0, addr_pattern
	ldr r1, addr_num_1
	bl scanf
	
	ldr r0, addr_get_val_2
	bl printf
	
	ldr r0, addr_pattern
	ldr r1, addr_num_2
	bl scanf

	@send values entered to our custom functions
	ldr r0, addr_num_1
	ldr r0, [r0]
	ldr r1, addr_num_2
	ldr r1, [r1]
	bl sum_vals

	@store value returned from function in r3
	mov r3, r0
	
	@assign values to sum for output
	ldr r0, addr_output
	ldr r1, addr_num_1
	ldr r1, [r1]
	ldr r2, addr_num_2
	ldr r2, [r2]
	bl printf

	@restore link register
	ldr lr, addr_lr_bu
	ldr lr, [lr]
	bx lr

@define addresses
addr_get_val_1: .word get_val_1
addr_get_val_2: .word get_val_2
addr_pattern: .word pattern
addr_num_1: .word num_1
addr_num_2: .word num_2
addr_sum: .word sum
addr_output: .word output
addr_lr_bu: .word lr_bu

@define we want to sue printf and scanf
.global printf
.global scanf

	
