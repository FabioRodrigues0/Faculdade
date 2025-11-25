.data
    msg1: .asciiz "Indique K: "
    msg2: .asciiz "Indique I: "
    msg3: .asciiz "Indique J: "
    msg4: .asciiz "Indique H: "

    resposta_0: .asciiz "Resposta: I + J = "
    resposta_1: .asciiz "Resposta: I - J = "
    resposta_2: .asciiz "Resposta: I + H = "
    resposta_3: .asciiz "Resposta: I - H = "

    erro: .asciiz "Erro: o 'K' tem que ser um numero entre 0 e 3 \n"

.text
    while:
        li $v0, 4
        la $a0, msg1
        syscall

        li $v0, 5
        syscall

        # K
        move $t3, $v0

        bgt $t3, 3, error
        blt $t3, 0, error

        beq $t3, 0, caso_0
        beq $t3, 1, caso_1

        beq $t3, 2, caso_2
        beq $t3, 3, caso_3

        j error

    caso_0:
        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall

        # I
        move $t1, $v0

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 5
        syscall

        # J
        move $t2, $v0

        add $t1, $t1, $t2

        li $v0, 4
        la $a0, resposta_0
        syscall

        li $v0, 1
        move $a0, $t1
        syscall

        j fechar

    caso_1:
        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall

        # I
        move $t1, $v0

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 5
        syscall

        # J
        move $t2, $v0

        sub $t1, $t1, $t2

        li $v0, 4
        la $a0, resposta_1
        syscall

        li $v0, 1
        move $a0, $t1
        syscall

        j fechar

    caso_2:
        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall

        # I
        move $t1, $v0

        li $v0, 4
        la $a0, msg4
        syscall

        li $v0, 5
        syscall

        # H
        move $t0, $v0

        add $t1, $t1, $t0

        li $v0, 4
        la $a0, resposta_2
        syscall

        li $v0, 1
        move $a0, $t1
        syscall

        j fechar

    caso_3:
        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall

        # I
        move $t1, $v0

        li $v0, 4
        la $a0, msg4
        syscall

        li $v0, 5
        syscall

        # H
        move $t0, $v0

        sub $t1, $t1, $t0

        li $v0, 4
        la $a0, resposta_3
        syscall

        li $v0, 1
        move $a0, $t1
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
