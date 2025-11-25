.data
    msg1: .asciiz "Indique o valor de B: "
    msg2: .asciiz "Indique o valor de C: "
    msg3: .asciiz "Indique o valor de F: "
    msg_res: .asciiz "O resultado de f = (c * (b * c) / f) é: "

.text
    # B
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s1, $v0

    # C
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $s2, $v0

    # F
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    move $s5, $v0

    # Cálculo: f = (c * (b * c) / f)
    mul $t0, $s1, $s2      # $t0 = b * c
    div $t0, $s5           # $t0 / f
    mflo $t1               ## $t1 = resultado de (b * c) / f

    mul $t2, $s2, $t1      # $t2 = c * $t1
    move $s5, $t2          # f = resultado final

    li $v0, 4
    la $a0, msg_res
    syscall

    li $v0, 1
    move $a0, $s5
    syscall

    li $v0, 10
    syscall
