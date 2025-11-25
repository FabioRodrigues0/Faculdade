.data
    msg1: .asciiz "A: "
    msg2: .asciiz "\nB: "

.text
    move $s0, $zero # A
    move $s1, $zero # B
    move $s2, $zero # I

    for:
        add $s0, $s0, 1
        add $s1, $s1, 2
        add $s2, $s2, 1

        blt $s2, 5, for

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
