---
tags:
  - ACOMP
---

# Linguagem Assembly - Laços de Repetição (Revisão)

**Nota:** Este material é uma revisão dos conceitos apresentados em [[Aula5_Assembly_Laços_Repetição]].

Este documento foca-se nos laços de repetição em MIPS. Para uma introdução geral à arquitetura e instruções MIPS, consulte o documento sobre [[aula3_Assembly_MIPS|Assembly MIPS]]. Para detalhes sobre as instruções condicionais usadas aqui, veja [[Aula4_Assembly_Condicionais|Condicionais em Assembly]].

## Laços de Repetição - While

Os laços de repetição em Assembly são combinações de [[Aula4_Assembly_Condicionais|Comandos Condicionais]] e Jumps. Para implementar um loop, teremos pelo menos dois rótulos: um para manter no loop, e outro para sair dele.

**Exemplo de estrutura:**
```mips
while:
    #aqui vão os comandos que serão executados no loop
    #...
    #condição de saída
    j while #salta de volta para o início do loop
saida:
    #aqui vão os comandos depois que o loop terminar
```

**Exemplo de código C para Assembly:**

Código em C:
```c
int i = 0;
while (i < 10){
    i++
}
print(“%d”, &i)
```

Código em Assembly MIPS:
```mips
.text
    move $t0, $zero      # i = 0 ($t0)
while:
    beq $t0, 10, saida   # if i == 10, go to saida
    addi $t0, $t0, 1     # i++
    j while              # go back to while
saida:
    #imprime o valor de i
    li $v0, 1
    move $a0, $t0
    syscall
```

## Exercício 1

Escreva um programa que lê um número inteiro positivo e imprime todos os números inteiros de zero até o número lido.

Ex.:
Entrada: 7
Saída: 0 1 2 3 4 5 6 7

```mips
.data
msg: .asciiz "Digite um número inteiro positivo: "
espaco: .byte ' '

.text
# Pede o número
li $v0, 4
la $a0, msg
syscall

# Lê o inteiro para $v0 e move para $t0
li $v0, 5 
syscall
move $t0, $v0

# Inicializa o contador em $t1
move $t1, $zero

laco:
    # Se contador ($t1) > número_lido ($t0), sai do laço
    bgt $t1, $t0, sai_do_laco

    # Imprime o valor do contador ($t1)
    li $v0, 1
    move $a0, $t1
    syscall

    # Imprime um espaço
    li $v0, 4
    la $a0, espaco
    syscall

    # Incrementa o contador
    addi $t1, $t1, 1
    j laco

sai_do_laco:
    # Termina o programa
    li $v0, 10
    syscall
```

## Exercício 2

Faça um programa em Assembly, que solicite dois números inteiros ao utilizador e em seguida realize uma soma, caso os dois números sejam diferentes ou uma subtração, caso os dois números sejam iguais. Entretanto, nenhum dos números digitados podem ser igual a zero. No final o programa deve apresentar no ecrã uma frase, a dizer se somou ou subtraiu, acompanhada do resultado do cálculo.

```mips
.data
msg1: .asciiz "Digite o primeiro número (diferente de zero): "
msg2: .asciiz "Digite o segundo número (diferente de zero): "
msg_soma: .asciiz "A soma dos números é: "
msg_sub: .asciiz "A subtração dos números é: "
msg_erro: .asciiz "Erro: Um dos números é zero."

.text
# Pede o primeiro número
li $v0, 4
la $a0, msg1
syscall
li $v0, 5
syscall
move $t0, $v0 # Guarda o primeiro número em $t0

# Verifica se é zero
beq $t0, $zero, erro

# Pede o segundo número
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
move $t1, $v0 # Guarda o segundo número em $t1

# Verifica se é zero
beq $t1, $zero, erro

# Compara os dois números
beq $t0, $t1, faz_subtracao

# Se forem diferentes, faz a soma
add $t2, $t0, $t1 # $t2 = $t0 + $t1
li $v0, 4
la $a0, msg_soma
syscall
li $v0, 1
move $a0, $t2
syscall
j fim

faz_subtracao:
sub $t2, $t0, $t1 # $t2 = $t0 - $t1
li $v0, 4
la $a0, msg_sub
syscall
li $v0, 1
move $a0, $t2
syscall
j fim

erro:
li $v0, 4
la $a0, msg_erro
syscall

fim:
li $v0, 10
syscall
```