# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 5
	syscall
	move $t1, $v0
	

	li $v0, 5
	syscall
	move $t2, $v0

	add $t0, $t0, $t1


#	li $t4, 4
#	mult $t0, $t0, $t4
	add $t0, $t0, $t0
	add $t0, $t0, $t0

	add $t5, $t2, $t2
	add $t5, $t5, $t2

	sub $t0, $t0, $t5

	li $v0, 1
	move $a0, $t0
	syscall

exit:
	# Exit
	li $v0, 10
	syscall

