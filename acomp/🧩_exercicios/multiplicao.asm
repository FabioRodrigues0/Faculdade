.text
	li $t0, 10
	li $t1, 15

	mul $s0, $t0, 10
	mul.s $f1, $f3, $f5
	mul.d $f2, $f4, $f6

	sll $s1, $t0, 10 # sll para multiplicar um numero por 2 elevando a qual quer coisa neste caso a 10

	li, $v0, 1
	move $a0, $s1
	syscall

	li $v0, 10
	syscall
