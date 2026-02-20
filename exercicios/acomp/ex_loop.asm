.data
    msg: .asciiz "Indique um numero: "
    espaco: .byte ' '

.text
    move $t0, $zero

    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall

    move $t1, $v0

    while:
        bgt $t0, $t1, end_loop

        li $v0, 1
        move $a0, $t0
        syscall

        li $v0, 4
        la $a0, espaco
        syscall

        addi $t0, $t0, 1

    j while

    end_loop:
        li $v0, 10
        syscall
