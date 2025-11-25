.data
    msg1: .asciiz "Indique o valor de A: "
    msg2: .asciiz "Indique o valor de B: "
    msg3: .asciiz "Indique o valor de C: "
    msg_res: .asciiz "O resultado de e = a / (b / c) é: "

.text
    # A
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s0, $v0

    # B
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $s1, $v0

    # C
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    move $s2, $v0

    # Cálculo: e = a / (b / c)
    div $s1, $s2      # b / c
    mflo $t0          ## $t0 = resultado de b / c

    div $s0, $t0      # a / ($t0)
    mflo $s4          ## e = resultado final

    li $v0, 4
    la $a0, msg_res
    syscall

    li $v0, 1
    move $a0, $s4
    syscall

    li $v0, 10
    syscall
