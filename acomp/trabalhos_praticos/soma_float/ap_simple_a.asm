.data
	msg1: .asciiz "Indique valor de b numero: "
	msg2: .asciiz "Indique valor de c numero: "
	
	num_b: .float 0.0
	num_c: .float 0.0
	resultado: .float 0.0

	resp:.asciiz "A) "

.text
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f3, $f0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 6
	syscall
	mov.s $f5, $f0
	
	sub.s $f1, $f3, $f5
	swc1 $f1, resultado
	
	li $v0, 4
	la $a0, resp
	syscall
	
	li $v0, 2
	lwc1 $f12, resultado
	syscall
	
	li $v0, 10
	syscall 
	
	