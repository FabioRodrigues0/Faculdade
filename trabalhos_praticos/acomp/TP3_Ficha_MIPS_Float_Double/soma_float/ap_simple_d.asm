.data
	msg1: .asciiz "Indique valor de a: " 
	msg2: .asciiz "Indique valor de b: "
	msg3: .asciiz "Indique valor de d: "
	msg_resultado: .asciiz "D) "
	
	num_a: .float 0.0
	num_b: .float 0.0
	num_d: .float 0.0
	resultado: .float 0.0
	
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	mov.s $f1, $f0
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 6
	mov.s $f3, $f0
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 6
	mov.s $f7, $f0
	syscall
	
	add.s $f9, $f1, $f3
	sub.s $f11, $f9, $f7
	swc1 $f11, resultado
	
	li $v0, 4
	la $a0, msg_resultado
	syscall
	
	li $v0, 2
	lwc1 $f12, resultado
	syscall
	
	li $v0, 10
	syscall