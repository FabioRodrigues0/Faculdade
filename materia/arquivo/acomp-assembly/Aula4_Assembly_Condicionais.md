---
tags:
  - ACOMP
---

# Linguagem Assembly - Condicionais

Este documento foca-se nos comandos condicionais em MIPS. Para uma introdução geral à arquitetura e instruções MIPS, consulte o documento sobre [[aula3_Assembly_MIPS|Assembly MIPS]].

## Comandos Condicionais

| Comando | Significado | Pronúncia |
|---|---|---|
| `beq $t1, $t2, label` | Se `$t1` for igual a `$t2`, execute a partir do rótulo `label` | branch if equal |
| `bne $t1, $t2, label` | Se `$t1` for diferente de `$t2`, execute a partir do rótulo `label` | branch if not equal |
| `blt $t1, $t2, label` | Se `$t1` for menor que `$t2`, execute a partir do rótulo `label` | branch if less than |
| `bgt $t1, $t2, label` | Se `$t1` for maior que `$t2`, execute a partir do rótulo `label` | branch if greater than |
| `ble $t1, $t2, label` | Se `$t1` for menor ou igual a `$t2`, execute a partir do rótulo `label` | branch if less or equal |
| `bge $t1, $t2, label` | Se `$t1` for maior ou igual a `$t2`, execute a partir do rótulo `label` | branch if greater or equal |

## Exercício 1

Escreva um programa em Assembly MIPS que lê um número inteiro e imprime se ele é par ou ímpar.

```mips
[[aula3_Assembly_MIPS#Program structure|.data]]
msg:.asciiz "Digite um número:"
par:.asciiz "O número digitado é par!"
impar:.asciiz "O número digitado é impar!"

[[aula3_Assembly_MIPS#Program structure|.text]]
# Imprime a mensagem inicial
li $v0, 4
la $a0, msg
syscall

# Lê o número inteiro
li $v0, 5
syscall

# Verifica se é par ou ímpar
li $t0, 2
div $v0, $t0
mfhi $t1 # O registador hi possui o resto da divisão que é movido para $t1

# Se o resto for 0, é par
beq $t1, $zero, print_par

# Senão, é ímpar
li $v0, 4
la $a0, impar
syscall

# Termina o programa
li $v0,10
syscall

print_par:
li $v0, 4
la $a0, par
syscall

# Termina o programa
li $v0,10
syscall
```

## Exercício 2

Escreva um programa em Assembly MIPS que lê um número inteiro e imprime se ele é maior, menor ou igual a zero.

```mips
.data
msg:.asciiz "Digite um número:"
maior:.asciiz "O número digitado é maior que zero!"
menor:.asciiz "O número digitado é menor que zero!"
igual:.asciiz "O número digitado é igual a zero!"

.text
# Imprime a mensagem inicial
li $v0, 4
la $a0, msg
syscall

# Lê o número inteiro
li $v0, 5
syscall

# Move o número lido para $t0
move $t0, $v0

# Compara com zero
beq $t0, $zero, print_igual
bgt $t0, $zero, print_maior
blt $t0, $zero, print_menor

print_igual:
li $v0, 4
la $a0, igual
syscall
# Finalização obrigatória, senão o programa executa as linhas abaixo
li $v0,10 
syscall

print_maior:
li $v0, 4
la $a0, maior
syscall
li $v0,10
syscall

print_menor:
li $v0, 4
la $a0, menor
syscall
# A finalização do programa é implícita aqui
```
