.data
	msg1: .asciiz "Indique o valor de a: "
	msg2: .asciiz "Indique o valor e b: "
	msg3: .asciiz "Indique o valor de c: "

	num_a: .double 0.0
	num_b: .double 0.0
	num_c: .double 0.0
	resultado: .double 0.0

	msg_resultado: .asciiz "C) "

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
	mov.d $f3, $f0

	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 7
	syscall
	mov.d $f5, $f0

	add.d $f9, $f1, $f3 # a + b = x
	sub.d $f7, $f9, $f5 # x - c

	sdc1 $f7, resultado

	li $v0, 4
	la $a0, msg_resultado
	syscall

	li $v0, 3
	ldc1 $f12, resultado
	syscall

	li $v0, 10
	syscall
