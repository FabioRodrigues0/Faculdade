.data
	numero1: .float 0.0
	numero2: .float 0.0
	resultado: .float 0.0
	
	msg1: .asciiz "Digite o primeiro numero: "
	msg2: .asciiz "Digite o segundo numero: "
	msgr: .asciiz "Resultado: "
	
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
	
	add.s $f5, $f1, $f3
	swc1 $f5, resultado
	
	li $v0, 4
	la $a0, msgr
	syscall
	
	li $v0, 2
	lwc1 $f12, resultado
	syscall
	
	li $v0, 10
	syscall