.text
	li $t0, 35
	li $t1, 2
	
	div $t0, $t1
	div.s $f1, $f3, $f5
	div.d $f2, $f4, $f6
	
	srl $s2, $t0, 2 # sll para dividir um numero por 2 elevando a qual quer coisa neste caso a 2
	
	mflo $s0 # mflo e para onde vai o resultado da diviçao
	mfhi $s1 # mfhi e para onde vai o resto da diviçao
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall