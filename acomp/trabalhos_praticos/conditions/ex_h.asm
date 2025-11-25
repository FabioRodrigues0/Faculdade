.data
    msg1: .asciiz "A: "
    msg2: .asciiz "\nB: "

.text
    move $s0, $zero # A
    move $s1, $zero # B
    li $s2, 5       # C

    while:
        add $s0, $s0, 1
        add $s1, $s1, $s2

        blt $s0, $s2, while

        li $v0, 4
        la $a0, msg1
        syscall

        li $v0, 1
        move $a0, $s0
        syscall

        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 1
        move $a0, $s1
        syscall

        li $v0, 10
        syscall
