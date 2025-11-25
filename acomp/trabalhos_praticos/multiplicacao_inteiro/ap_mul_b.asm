.data
    msg_a: .asciiz "Enter integer value for a: "
    msg_f: .asciiz "Enter integer value for f: "
    msg_b: .asciiz "Result b = a * f: "

.text
.globl main
main:
    # Register mapping: a=$s0, b=$s1, f=$s5

    # Prompt for a
    li $v0, 4
    la $a0, msg_a
    syscall

    # Read a
    li $v0, 5
    syscall
    move $s0, $v0

    # Prompt for f
    li $v0, 4
    la $a0, msg_f
    syscall

    # Read f
    li $v0, 5
    syscall
    move $s5, $v0

    # b = a * f
    mul $s1, $s0, $s5

    # Print result message
    li $v0, 4
    la $a0, msg_b
    syscall

    # Print b
    li $v0, 1
    move $a0, $s1
    syscall

    # Exit
    li $v0, 10
    syscall
