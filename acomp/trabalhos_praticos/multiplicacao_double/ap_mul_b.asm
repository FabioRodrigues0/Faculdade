.data
    msg_a: .asciiz "Enter double value for a: "
    msg_f: .asciiz "Enter double value for f: "
    msg_b: .asciiz "Result b = a * f: "

.text
.globl main
main:
    # Register mapping: a=$f2, b=$f4, f=$f14

    # Prompt for a
    li $v0, 4
    la $a0, msg_a
    syscall

    # Read a
    li $v0, 7
    syscall
    mov.d $f2, $f0

    # Prompt for f
    li $v0, 4
    la $a0, msg_f
    syscall

    # Read f
    li $v0, 7
    syscall
    mov.d $f14, $f0

    # b = a * f
    mul.d $f4, $f2, $f14

    # Print result message
    li $v0, 4
    la $a0, msg_b
    syscall

    # Print b
    li $v0, 3
    mov.d $f12, $f4
    syscall

    # Exit
    li $v0, 10
    syscall
