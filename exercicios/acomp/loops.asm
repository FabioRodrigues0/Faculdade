.text
    move $t0, $zero

while:
    beq $t0, $zero, saida
    addi $t0, $t0, 1
    j while

saida:
    li $v0, 1
    move $a0, $t0
    syscall

li $v0, 10
syscall
