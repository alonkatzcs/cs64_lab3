# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	 request:    .asciiz "Enter an integer:\n"
	 response: .asciiz "Hello Pandemic World!\nThe magic number is "
	 exclamation: .asciiz "!!!"
#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here

	li $v0, 4
	la $a0, request
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, response
	syscall 

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, exclamation
	syscall 

exit:
	# Exit
	li $v0, 10
	syscall

