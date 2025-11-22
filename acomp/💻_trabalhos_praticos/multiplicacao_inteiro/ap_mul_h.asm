.data
    msg1: .asciiz "Indique o valor de A: "
    msg2: .asciiz "Indique o valor de B: "
    msg3: .asciiz "Indique o valor de C: "
    msg4: .asciiz "Indique o valor de E: "
    msg5: .asciiz "Indique o valor de F: "
    msg_res: .asciiz "O resultado de a = e * (a * b) / (b * c) / f é: "

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

    # E
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 5
    syscall
    move $s4, $v0

    # Entrada de F
    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 5
    syscall
    move $s5, $v0

    # Cálculo: a = e * (a * b) / (b * c) / f
    mul $t0, $s0, $s1      # $t0 = a * b
    mul $t1, $s1, $s2      # $t1 = b * c
    div $t0, $t1           # (a * b) / (b * c)

    mflo $t2               ## $t2 = resultado de (a * b) / (b * c)
    mul $t3, $s4, $t2      # $t3 = e * $t2
    div $t3, $s5           # $t3 / f

    mflo $s0               ## a = resultado final

    # Exibe resultado
    li $v0, 4
    la $a0, msg_res
    syscall

    li $v0, 1
    move $a0, $s0
    syscall

    li $v0, 10
    syscall
