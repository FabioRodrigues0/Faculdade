.data
	msg1: .asciiz "Indique o valor de a: "
	msg2: .asciiz "Indique o valor e b: "
	msg3: .asciiz "Indique o valor de c: "
	
	num_a: .float 0.0
	num_b: .float 0.0
	num_c: .float 0.0
	resultado: .float 0.0
	
	msg_resultado: .asciiz "C) "
	 
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f1, $f0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 6
	syscall
	mov.s $f3, $f0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 6
	syscall
	mov.s $f5, $f0
	
	add.s $f9, $f1, $f3 # a + b = x
	sub.s $f7, $f9, $f5 # x - c
	
	swc1 $f7, resultado
	
	li $v0, 4
	la $a0, msg_resultado
	syscall
	
	li $v0, 2
	lwc1 $f12, resultado
	syscall
	
	li $v0, 10
	syscall