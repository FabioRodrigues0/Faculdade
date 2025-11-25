.data
	msg1: .asciiz "Indique valor de a: "
	msg2: .asciiz "Indique valor de b: "
	msg3: .asciiz "Indique valor de d: "

	msg_resultado: .asciiz "E) "
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

	add.d $f13, $f3, $f7
	sub.d $f5, $f1, $f13
	sdc1 $f5, resultado

	li $v0, 4
	la $a0, msg_resultado
	syscall

	li $v0, 3
	ldc1 $f12, resultado
	syscall

	li $v0, 10
	syscall
