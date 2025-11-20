.data
	msg1: .asciiz "Indique valor de b numero: "
	msg2: .asciiz "Indique valor de c numero: "

	num_b: .double 0.0
	num_c: .double 0.0
	resultado: .double 0.0

	resp:.asciiz "A) "

.text
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 7
	syscall
	mov.d $f4, $f0

	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 7
	syscall
	mov.d $f6, $f0

	sub.d $f2, $f4, $f6
	sdc1 $f2, resultado

	li $v0, 4
	la $a0, resp
	syscall

	li $v0, 3
	ldc1 $f12, resultado
	syscall

	li $v0, 10
	syscall
