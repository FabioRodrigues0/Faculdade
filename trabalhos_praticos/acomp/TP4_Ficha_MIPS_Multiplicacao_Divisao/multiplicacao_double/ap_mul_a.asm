.data
    msg_b: .asciiz "Enter double value for b: "
    msg_d: .asciiz "Enter double value for d: "
    msg_a: .asciiz "Result a = b * d: "

.text
.globl main
main:
    # Register mapping: a=$f2, b=$f4, d=$f8

    # Prompt for b
    li $v0, 4
    la $a0, msg_b
    syscall

    # Read b
    li $v0, 7
    syscall
    mov.d $f4, $f0

    # Prompt for d
    li $v0, 4
    la $a0, msg_d
    syscall

    # Read d
    li $v0, 7
    syscall
    mov.d $f8, $f0

    # a = b * d
    mul.d $f2, $f4, $f8

    # Print result message
    li $v0, 4
    la $a0, msg_a
    syscall

    # Print a
    li $v0, 3
    mov.d $f12, $f2
    syscall

    # Exit
    li $v0, 10
    syscall
