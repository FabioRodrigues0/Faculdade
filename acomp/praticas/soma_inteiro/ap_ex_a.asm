.data
	msg_perg1: .asciiz "Indique valor de b numero: "
	msg_perg2: .asciiz "Indique valor de c numero: "

	resp_a:.asciiz "A) "

.text
	li $v0, 4 # imprimir string
	la $a0, msg_perg1
	syscall
	
	li $v0, 5 # comando para ficar a espera do input
	syscall
	
	move $s1, $v0
	
	li $v0, 4 # imprimir string
	la $a0, msg_perg2
	syscall
	
	li $v0, 5 # comando para ficar a espera do input
	syscall
	
	move $s2, $v0
	
	sub $s0, $s1, $s2 # a) b-c
	
	li $v0, 4
	la $a0, resp_a
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 10
	syscall
	
