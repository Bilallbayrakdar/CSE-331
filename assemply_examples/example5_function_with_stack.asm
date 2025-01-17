# Simple routine to demo functions
# USING a stack in this example to preserve
# values of calling function

# ------------------------------------------------------------------
	
	.text

	.globl	main
main:
	# Register assignments
	# $s0 = x
	# $s1 = y

	# Initialize registers
	lw	$s0, x		# Reg $s0 = x
	lw	$s1, y		# Reg $s1 = y

	# Call function
	move	$a0, $s0	# Argument 1: x ($s0)
	jal	fun		# Save current PC in $ra, and jump to fun
	move	$s1,$v0		# Return value saved in $v0. This is y ($s1)

	# Print msg1
	li	$v0, 4		# print_string syscall code = 4
	la	$a0, msg1
	syscall

	# Print result (y)
	li	$v0,1		# print_int syscall code = 1
	move	$a0, $s1	# Load integer to print in $a0
	syscall

	# Print newline
	li	$v0,4		# print_string syscall code = 4
	la	$a0, lf
	syscall

	# Exit
	li	$v0,10		# exit
	syscall

# ------------------------------------------------------------------
	
	# FUNCTION: int fun(int a)
	# Arguments are stored in $a0
	# Return value is stored in $v0
	# Return address is stored in $ra (put there by jal instruction)
	# Typical function operation is:
	
fun:	# This function overwrites $s0 and $s1
	# We should save those on the stack
	# This is PUSH'ing onto the stack
	addi $sp,$sp,-4		# Adjust stack pointer
	sw $s0,0($sp)		# Save $s0
	addi $sp,$sp,-4		# Adjust stack pointer
	sw $s1,0($sp)		# Save $s1

	# Do the function math
	li $s0, 3
	mul $s1,$s0,$a0		# s1 = 3*$a0  (i.e. 3*a)
	addi $s1,$s1,5		# 3*a+5

	# Save the return value in $v0
	move $v0,$s1

	# Restore saved register values from stack in opposite order
	# This is POP'ing from the stack
	lw $s1,0($sp)		# Restore $s1
	addi $sp,$sp,4		# Adjust stack pointer
	lw $s0,0($sp)		# Restore $s0
	addi $sp,$sp,4		# Adjust stack pointer
	
	# Return from function
	jr $ra			# Jump to addr stored in $ra
	
# ------------------------------------------------------------------
	
	# Start .data segment (data!)
	.data
x:	.word 5
y:	.word 0
msg1:	.asciiz	"y="
lf:     .asciiz	"\n"


