.data
	PI: .float 3.141592
.text
	li $v0, 2 	# sistema,prepare-se para imprimir um float
	lwc1 $f12, PI 	# no caso do float, os registradores estão
	# no co-processador 1(cp1)
	# sempre devemos colocar o valor do float em $f12, ou
	# o valor correto não é impresso

	syscall
