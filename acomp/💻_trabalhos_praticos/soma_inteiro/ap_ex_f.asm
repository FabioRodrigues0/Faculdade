.data
	msg_a: .asciiz "Indique valor de a: "
	msg_b: .asciiz "Indique valor de b: "
	msg_c: .asciiz "Indique valor de c: "
	resp: .asciiz "F) "
	
.text
	li $v0, 4
	la $a0, msg_a
	syscall
	
	li $v0, 5
	syscall
	 
	move $s0, $v0
	#-------
	
	li $v0, 4
	la $a0, msg_b
	syscall
	
	li $v0, 5
	syscall
	
	move $s1, $v0
	#-------
	
	li $v0, 4
	la $a0, msg_c
	syscall
	
	li $v0, 5
	syscall
	
	move $s2, $v0
	#-------
	
	sub $t0, $s1, $s2 # b - c = x
	sub $s4, $s0, $t0 # a - x
	
	li $v0, 4
	la $a0, resp
	syscall
	
	li $v0, 1
	move $a0, $s4
	syscall
	
	li $v0, 10
	syscall
	
