.data
	msg1: .asciiz "Indique o valor de a: "
	msg2: .asciiz "Indique o valor de c: "
	msg_resultado: .asciiz "B) "

	valor_a: .double 0.0
	valor_c: .double 0.0
	resultado: .double 0.0

.text
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 7
	syscall
	mov.d $f1, $f0

	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 7
	syscall
	mov.d $f5, $f0

	add.d $f3, $f1, $f5
	sdc1 $f3, resultado

	li $v0, 4
	la $a0, msg_resultado
	syscall

	li $v0, 3
	ldc1 $f12, resultado
	syscall

	li $v0, 10
	syscall
