.data
    msg1: .asciiz "Indique um numero 1: "
    msg2: .asciiz "Indique um numero 2: "

    erro: .asciiz "Tem que indicar um numero diferente de 0 \n"

    text_soma: .asciiz "Somou dando o resultado "
    text_sub: .asciiz "Subtraio dando o resultado "

.text
    while_1:
        li $v0, 4
        la $a0, msg1
        syscall

        li $v0, 5
        syscall

        beqz $v0, erro_1

        move $s1, $v0

    erro_1:
    	li $v0, 4
        la $a0, erro
        syscall

        j while_1

    while_2:
        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall

        beqz $v0, erro_2

        move $s2, $v0

    erro_2:
    	li $v0, 4
        la $a0, erro
        syscall

        j while_2

    beq $s1, $s2, subt

    add $s3, $s1, $s2

    li $v0, 4
    la $a0, text_soma
    syscall

    li $v0, 1
    move $a0, $s3

    li $v0, 10
    syscall

    subt:
        sub $s3, $s1, $s2

        li $v0, 4
        la $a0, text_sub
        syscall

        li $v0, 1
        move $a0, $s3

        li $v0, 10
        syscall

    li $v0, 10
    syscall
