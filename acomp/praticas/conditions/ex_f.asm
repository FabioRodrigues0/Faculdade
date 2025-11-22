.data
    msg1: .asciiz "Indique A: "
    msg2: .asciiz "Indique B: "

    resposta_1: .asciiz "Resposta: A = B "
    resposta_2: .asciiz "Resposta: B = "

.text
    while:
        li $v0, 4
        la $a0, msg1
        syscall

        li $v0, 5
        syscall

        # A
        move $s1, $v0

        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall

        # B
        move $s2, $v0

        beq $s1, $s2, condicao_iguais
        bne $s2, $s1, condicao_diferentes

    condicao_iguais:
        li $v0, 4
        la $a0, resposta_1
        syscall

        j fechar

    condicao_diferentes:
        add $s2, $s2, 1

        li $v0, 4
        la $a0, resposta_2
        syscall

        li $v0, 1
        move $a0, $s2
        syscall

        j fechar

    fechar:
        li $v0, 10
        syscall
