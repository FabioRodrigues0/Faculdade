.data
	msg1: .asciiz "Indique valor de a: "
	msg2: .asciiz "Indique valor de b: "
	msg3: .asciiz "Indque valor de c: "

	msg_resultado: .asciiz "F) "
	resultado: .double 0.0

.text
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 7
	mov.d $f1, $f0
	syscall
	#-----
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 7
	mov.d $f3, $f0
	syscall
	#-----
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 7
	mov.d $f5, $f0
	syscall
	#-----
	sub.d $f13, $f3, $f5 # b - c = x
	sub.d $f9, $f1, $f13 # a - x
	sdc1 $f9, resultado

	li $v0, 4
	la $a0, msg_resultado
	syscall

	li $v0, 3
	ldc1 $f12, resultado
	syscall

	li $v0, 10
	syscall
