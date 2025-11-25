.data
	msg1: .asciiz "Indique valor de a: "
	msg2: .asciiz "Indique valor de b: "
	msg3: .asciiz "Indique valor de c: "
	msg4: .asciiz "Indique valor de e: "

	msg_resultado: .asciiz "H) "
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
	#----
	li $v0, 4
	la $a0, msg4
	syscall

	li $v0, 7
	mov.d $f9, $f0
	syscall

	sub.d $f13, $f1, $f3 # a - b = x
	sub.d $f14, $f3, $f5 # b - c = z
	add.d $f13, $f13, $f14 # x + z = y
	sub.d $f11, $f9, $f13 # e - y

	sdc1 $f11, resultado

	li $v0, 4
	la $a0, msg_resultado
	syscall

	li $v0, 3
	ldc1 $f12, resultado
	syscall

	li $v0, 10
	syscall
