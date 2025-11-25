.data
    menu_cab: .asciiz "----ESCOLHA----"
    menu_opt1: .asciiz "1 - SOMAR"
    menu_opt2: .asciiz "2 - SUBTRAIR"

    quebra: .asciiz "\n"

    resultado: .asciiz "Resultado: "

    num1: .asciiz "Digite o primeiro número: "
    num2: .asciiz "Digite o segundo número: "

.text
    menu:
        li $v0, 4
        la $a0, menu_cab
        syscall

        li $v0, 4
        la $a0, quebra
        syscall

        li $v0, 4
        la $a0, quebra
        syscall

        li $v0, 4
        la $a0, menu_opt1
        syscall

        li $v0, 4
        la $a0, menu_opt2
        syscall

        li $v0, 4
        la $a0, quebra
        syscall

        li $v0, 4
        la $a0, quebra
        syscall

        li $v0, 5
        syscall

        move $t4, $v0

        beq $t4, 1, somar
        beq $t4, 2, subtrair

    somar:
        li $v0, 4
        la $a0, num1
        syscall

        li $v0, 5
        syscall

        move $t0, $v0

        li $v0, 4
        la $a0, num2
        syscall

        li $v0, 5
        syscall

        move $t1, $v0

        add $t3, $t0, $t1

        j exit

    subtrair:
        li $v0, 4
        la $a0, num1
        syscall

        li $v0, 5
        syscall

        move $t0, $v0

        li $v0, 4
        la $a0, num2
        syscall

        li $v0, 5
        syscall

        move $t1, $v0

        sub $t3, $t0, $t1

    exit:
        li $v0, 4
        la $a0, resultado
        syscall

        li $v0, 1
        move $a0, $t3
        syscall

        li $v0, 10
        syscall
