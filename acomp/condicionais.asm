.data
	msg: .asciiz "Indique um numero: "
	par: .asciiz "O numero indicado e par."
	impar: .asciiz "O numero indicado e impar."
	
.text
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	mfhi $t1
	
	beq $t1, $zero, print_par
	li $v0, 4
	la $a0, impar
	syscall
	
	li $v0, 10
	syscall
	
	print_par:
		li $v0, 4
		la $a0, par
		syscall
		
		li $v0, 10
		syscall