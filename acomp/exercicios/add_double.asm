.data
	numero1: .double 10.0
	numero2: .double 2.0

.text
	ldc1 $f4, numero1
	ldc1 $f2, numero2

	add.d $f4, $f2, $f4
	sdc1 $f4, numero2

	li $v0, 3
	ldc1 $f12, numero2
	syscall
