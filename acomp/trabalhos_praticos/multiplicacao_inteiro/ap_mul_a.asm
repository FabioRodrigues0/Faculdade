.data
    msg_b: .asciiz "Enter integer value for b: "
    msg_d: .asciiz "Enter integer value for d: "
    msg_a: .asciiz "Result a = b * d: "

.text
.globl main
main:
    # Register mapping: a=$s0, b=$s1, d=$s3

    # Prompt for b
    li $v0, 4
    la $a0, msg_b
    syscall

    # Read b
    li $v0, 5
    syscall
    move $s1, $v0

    # Prompt for d
    li $v0, 4
    la $a0, msg_d
    syscall

    # Read d
    li $v0, 5
    syscall
    move $s3, $v0

    # a = b * d
    mul $s0, $s1, $s3

    # Print result message
    li $v0, 4
    la $a0, msg_a
    syscall

    # Print a
    li $v0, 1
    move $a0, $s0
    syscall

    # Exit
    li $v0, 10
    syscall
