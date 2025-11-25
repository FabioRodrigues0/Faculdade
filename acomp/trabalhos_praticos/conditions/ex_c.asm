.data
    msg1: .asciiz "Indique A: "
    msg2: .asciiz "Indique B: "

    resposta: .asciiz "Resposta: A = "

    erro: .asciiz "Erro: o 'b' tem que ser maior ou igual que o 'a'\n"

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

        bge $s2, $s1, condicao

        j error

    condicao:
        li $v0, 4
        la $a0, resposta
        syscall

        add $s1, $s1, 1

        li $v0, 1
        move $a0, $s1
        syscall

        j fechar

    error:
        li $v0, 4
        la $a0, erro
        syscall

        j while

    fechar:
        li $v0, 10
        syscall
