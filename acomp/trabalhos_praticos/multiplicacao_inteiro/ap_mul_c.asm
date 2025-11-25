.data
	msg1: .asciiz "Indique valor de F: "
	msg2: .asciiz "Indique valor de B: "
	msg3: .asciiz "Indique valor de C: "

	resposta: .asciiz "C) "
.text
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall

	move $s5, $v0

	#--

	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	syscall

	move $s1, $v0

	#--

	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 5
	syscall

	move $s2, $v0

	#--

	mul $t0, $s5, $s1
	div $t0, $s2

	mflo $s2

	li $v0, 4
	la $a0, resposta
	syscall

	li $v0, 1
	move $a0, $s2
	syscall

	li $v0, 10
	syscall
