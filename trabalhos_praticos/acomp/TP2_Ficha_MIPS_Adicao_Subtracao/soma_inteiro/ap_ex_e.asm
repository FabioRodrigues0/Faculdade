.data
	msg_a: .asciiz "Indique valor de a: "
	msg_b: .asciiz "Indique valor de b: "
	msg_d: .asciiz "Indique valor de d: "
	resp: .asciiz "E) "
	
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
	la $a0, msg_d
	syscall
	
	li $v0, 5
	syscall
	
	move $s3, $v0
	#-------
	
	add $t0, $s1, $s3 # b + c = x
	sub $s2, $s0, $t0 # a + x
	
	li $v0, 4
	la $a0, resp
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 10
	syscall
	
