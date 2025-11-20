.data
    msg1: .asciiz "Indique o valor de F: "
    msg2: .asciiz "Indique o valor de B: "
    msg3: .asciiz "Indique o valor de D: "
    msg_res: .asciiz "O resultado de a = f / (b * d) é: "

.text
    # F
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s5, $v0

    # B
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $s1, $v0

    # D
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    move $s3, $v0

    # Cálculo: a = f / (b * d)
    mul $t0, $s1, $s3      # $t0 = b * d
    div $s5, $t0           # f / (b * d)
    mflo $s0               ## a = resultado

    # Exibe resultado
    li $v0, 4
    la $a0, msg_res
    syscall

    li $v0, 1
    move $a0, $s0
    syscall

    li $v0, 10
    syscall
