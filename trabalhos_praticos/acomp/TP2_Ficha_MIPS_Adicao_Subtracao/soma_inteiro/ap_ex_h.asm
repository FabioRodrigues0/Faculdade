.data
	msg_a: .asciiz "Indique valor de a: "
	msg_b: .asciiz "Indique valor de b: "
	msg_c: .asciiz "Indique valor de c: "
	msg_e: .asciiz "Indique valor de e: "
	resp: .asciiz "H) "
	
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
	
	li $v0, 4
	la $a0, msg_e
	syscall
	
	li $v0, 5
	syscall
	
	move $s4, $v0
	#-------
	
	sub $t0, $s0, $s1 # a - b = x
	sub $t1, $s1, $s2 # b - c = y
	sub $t3, $s4, $t0 # e - x = z
	add $s5, $t3, $t1 # z + y
	
	li $v0, 4
	la $a0, resp
	syscall
	
	li $v0, 1
	move $a0, $s5
	syscall
	
	li $v0, 10
	syscall
	
