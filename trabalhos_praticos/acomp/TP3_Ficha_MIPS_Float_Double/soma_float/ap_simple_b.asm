.data
	msg1: .asciiz "Indique o valor de a: "
	msg2: .asciiz "Indique o valor de c: "
	msg_resultado: .asciiz "B) "
	
	valor_a: .float 0.0
	valor_c: .float 0.0
	resultado: .float 0.0
	
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
	mov.s $f5, $f0
	
	add.s $f3, $f1, $f5
	swc1 $f3, resultado
	
	li $v0, 4
	la $a0, msg_resultado
	syscall
	
	li $v0, 2
	lwc1 $f12, resultado
	syscall
	
	li $v0, 10
	syscall
