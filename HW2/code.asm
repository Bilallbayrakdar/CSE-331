 # This code creates an 100 sized array 
# Gets size (n) input from user than it gets
# and gets pozitive integer from user
# for n element

.data
    m1: .asciiz "Enter the size: "
    m2: .asciiz "Enter the sum: "
    o1: .asciiz "Possible!"
    o2: .asciiz "Not possible!"
.text
	#Register Assignment
    	# $s0 = n 	(size of the array)
    	# $s1 = sum 	(targe value)
    	# $s2 = arr	(0 index of arr)
    main:
        #print m1
        la $a0 m1
        li $v0 4
        syscall

        #get size of the array
        li $v0 5
        syscall
	move $s0,$v0
	
	#print m2
        la $a0 m2
        li $v0 4
        syscall
        
        #get sum
        li $v0, 5
        syscall
        move $s1, $v0
		
        #allocate space
        sll $a0 $s0 2 	#number of bytes now in $a0
        li  $v0 9	#sbrk call => (int*)malloc(sizeof(int)*$s0)
        syscall 
	
        move $s2, $v0	#$s2 = arr
	
	#assign values to elements of array
	move $t0,$s2	                
	sll $t1,$s0,2
	add $t1,$t0,$t1 
loop:
        li $v0, 5
        syscall
        sw $v0, ($t0)
	addi $t0, $t0, 4
	bne $t0, $t1, loop
	
	move $a0, $s1 #num
	move $a1, $s2 #arr
	move $a2, $s0 #size
	jal CheckSumPossibility
	
	move $a0,$v0
	li $v0, 4
	beq $a0,$zero, np
	bne $a0,$zero, p
	syscall		
	
	jal exit

np:
	la $a0, o2
	syscall		
	
	jal exit
p:
	la $a0, o1
	syscall		
	
	jal exit

CheckSumPossibility:
	addi $sp, $sp, -16
	sw $a2, 12($sp)
	sw $a1, 8($sp)		
	sw $a0, 4($sp)
	sw $ra, 0($sp)

	beq $a0, $zero, true
	beq $a2, $zero, false
	
	addi $t0,$a2,-1		#size = size-1
	sll $t0,$t0,2		#$t0 = (size-1)*4
	add $t0, $t0, $a1	#$t1 = arr+$t0 = arr[size-1]
	lw $t0, 0($t0)
	slt $t0, $a0,$t0
	
	bne $t0,$zero case_1
	beq $t0,$zero case_2

case_1:
	jal size_1
	lw $ra, 0($sp)
	addi $sp, $sp, 16
	jr $ra

case_2:
	jal size_1
	beq $v0,$zero, last
last_return:
	lw $ra, 0($sp)
	addi $sp,$sp,16
	jr $ra
	
size_1:
	addi $sp, $sp, -4
	sw $ra, 0($sp)		# push a to the stack
	
	lw $t0, 16($sp)		# size has to be decrement by 1
	lw $a1, 12($sp)		# arr remains same
	lw $a0, 8($sp)		# num remains same
	
	addi $a2, $t0, -1	# size = size -1
	
	jal CheckSumPossibility
	
	lw $ra, 0($sp)		# $ra = t
	addi $sp,$sp,4
	jr $ra	

last:
	
	lw $a2, 12($sp)		# since was 1 before 0. since we read from stack $a2 = 1
	lw $a1, 8($sp)		# arr remains same
	lw $t1, 4($sp)		# num decrements by last element

	addi $a2,$a2,-1
	sll $t0, $a2, 2		# $t0 = (size-1)*4
	add $a0, $t0, $a1	# arr + (size-1)*4
	lw $a0, 0($a0)		# arr = *arr
	neg $a0, $a0		# arr = -arr
	add $a0, $a0, $t1	# arr = num + (-arr)
	
	jal CheckSumPossibility
	
	jal last_return

true:
	li $v0,1
	lw $ra, 0($sp)
	addi $sp, $sp, 16
	jr $ra

false:
	li $v0,0
	lw $ra, 0($sp)
	addi $sp, $sp, 16
	jr $ra
			
exit:        
        li $v0 10
        syscall
