.data
    msg1: .asciiz "Indique A: "
    msg2: .asciiz "Indique B: "

    resposta: .asciiz "Resposta: \n"
    #res_a: .asciiz "'a' + 1 = "
    #res_b: .asciiz "'b' + 1 = "
    #res_c: .asciiz "'a' + 1 = "
    #res_d: .asciiz "'a' e 'b' são iguais"

    erro: .asciiz "Erro: o 'a' tem que ser maior do que o 'b'"

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

        bgt $s1, $s2, linha_a
        #bge $s1, $s2, linha_b
        #bge $s2, $s1, linha_c
        #beq $s1, $s2, linha_d

        j error

    linha_a:
        li $v0, 4
        la $a0, resposta
        syscall

        add $s1, $s1, 1

        li $v0, 2
        move $a0, $s1

        j fechar

    error:
        li $v0, 4
        la $a0, erro
        syscall

        j while

    fechar:
        li $v0, 10
        syscall
