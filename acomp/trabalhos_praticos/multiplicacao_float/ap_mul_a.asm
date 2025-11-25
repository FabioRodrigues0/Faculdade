.data
    msg_b: .asciiz "Enter float value for b: "
    msg_d: .asciiz "Enter float value for d: "
    msg_a: .asciiz "Result a = b * d: "

.text
.globl main
main:
    # Register mapping: a=$f1, b=$f3, d=$f7

    # Prompt for b
    li $v0, 4
    la $a0, msg_b
    syscall

    # Read b
    li $v0, 6
    syscall
    mov.s $f3, $f0

    # Prompt for d
    li $v0, 4
    la $a0, msg_d
    syscall

    # Read d
    li $v0, 6
    syscall
    mov.s $f7, $f0

    # a = b * d
    mul.s $f1, $f3, $f7

    # Print result message
    li $v0, 4
    la $a0, msg_a
    syscall

    # Print a
    li $v0, 2
    mov.s $f12, $f1
    syscall

    # Exit
    li $v0, 10
    syscall
