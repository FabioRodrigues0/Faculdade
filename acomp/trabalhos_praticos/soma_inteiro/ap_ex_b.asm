.data
	msg_a: .asciiz "Indique valor de a "
	msg_c: .asciiz "Indique valor de b "
	resp: .asciiz "B) "
	
.text
	li $v0, 4
	la $a0, msg_a
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	#-------
	
	li $v0, 4
	la $a0, msg_c
	syscall
	
	li $v0, 5
	syscall
	
	move $s2, $v0
	#-------
	
	add $s1, $s0, $s2 # a + c
	
	li $v0, 4
	la $a0, resp
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall
