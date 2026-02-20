.data
	msg1: .asciiz "Indique valor de a: "
	msg2: .asciiz "Indique valor de b: "
	msg3: .asciiz "Indque valor de c: "
	
	msg_resultado: .asciiz "F) "
	resultado: .float 0.0
	
.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	mov.s $f1, $f0
	syscall
	#-----
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 6
	mov.s $f3, $f0
	syscall
	#-----
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 6
	mov.s $f5, $f0
	syscall
	#-----
	sub.s $f13, $f3, $f5 # b - c = x
	sub.s $f9, $f1, $f13 # a - x
	swc1 $f9, resultado
	
	li $v0, 4
	la $a0, msg_resultado
	syscall
	
	li $v0, 2
	lwc1 $f12, resultado
	syscall
	
	li $v0, 10
	syscall
	