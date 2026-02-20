.data
    msg1: .asciiz "Indique A: "
    msg2: .asciiz "Indique B: "

    resposta: .asciiz "Resposta: A = B "

    erro: .asciiz "Erro: o 'a' e o 'b' tem que ser iguais\n"

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

        beq $s1, $s2, condicao

        j error

    condicao:
        li $v0, 4
        la $a0, resposta
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
