.data
    msg_a: .asciiz "Enter float value for a: "
    msg_f: .asciiz "Enter float value for f: "
    msg_b: .asciiz "Result b = a * f: "

.text
.globl main
main:
    # Register mapping: a=$f1, b=$f3, f=$f11

    # Prompt for a
    li $v0, 4
    la $a0, msg_a
    syscall

    # Read a
    li $v0, 6
    syscall
    mov.s $f1, $f0

    # Prompt for f
    li $v0, 4
    la $a0, msg_f
    syscall

    # Read f
    li $v0, 6
    syscall
    mov.s $f11, $f0

    # b = a * f
    mul.s $f3, $f1, $f11

    # Print result message
    li $v0, 4
    la $a0, msg_b
    syscall

    # Print b
    li $v0, 2
    mov.s $f12, $f3
    syscall

    # Exit
    li $v0, 10
    syscall
