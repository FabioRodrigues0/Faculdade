.data
	msg1: .asciiz "Indique valor de a: "
	msg2: .asciiz "Indique valor de b: "
	msg3: .asciiz "Indique valor de d: "
	
	msg_resultado: .asciiz "E) "
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
	
	add.s $f13, $f3, $f7
	sub.s $f5, $f1, $f13
	swc1 $f5, resultado
	
	li $v0, 4
	la $a0, msg_resultado
	syscall
	
	li $v0, 2
	lwc1 $f12, resultado
	syscall
	
	li $v0, 10
	syscall