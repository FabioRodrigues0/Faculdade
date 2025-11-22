.data
	msg1: .asciiz "Indique valor de a: "
	msg2: .asciiz "Indique valor de b: "
	msg3: .asciiz "Indique valor de d: "
	msg_resultado: .asciiz "D) "

	num_a: .double 0.0
	num_b: .double 0.0
	num_d: .double 0.0
	resultado: .double 0.0

.text
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 7
	mov.d $f1, $f0
	syscall

	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 7
	mov.d $f3, $f0
	syscall

	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 7
	mov.d $f7, $f0
	syscall

	add.d $f9, $f1, $f3
	sub.d $f11, $f9, $f7
	sdc1 $f11, resultado

	li $v0, 4
	la $a0, msg_resultado
	syscall

	li $v0, 3
	ldc1 $f12, resultado
	syscall

	li $v0, 10
	syscall
