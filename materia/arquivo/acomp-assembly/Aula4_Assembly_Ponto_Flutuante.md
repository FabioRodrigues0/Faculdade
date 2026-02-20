---
tags:
  - ACOMP
---

# Linguagem Assembly - Ponto Flutuante

Este documento foca-se na manipulação de números de ponto flutuante em MIPS. Para uma introdução geral à arquitetura e instruções MIPS, consulte o documento sobre [[aula3_Assembly_MIPS|Assembly MIPS]].

## Pontos Flutuantes

- Números representados com casas decimais.
- **float**:
    - 32 bits
    - um único registrador do coprocessador 1
- **double**:
    - 64 bits
    - dois registradores do coprocessador 1

### Registradores de Ponto Flutuante (Coprocessador 1)

| Name  | Float | Double |
|---|---|---|
| `$f0` | 0.0 | 0.0 |
| `$f1` | 0.0 | |
| `$f2` | 0.0 | 0.0 |
| `$f3` | 0.0 | |
| ... | ... | ... |
| `$f30`| 0.0 | 0.0 |
| `$f31`| 0.0 | |


## Comandos `li $v0` para Ponto Flutuante

Estes são os serviços de [[aula3_Assembly_MIPS#MIPS - Syscalls|syscall]] específicos para operações de ponto flutuante.

| Comando | Significado |
|---|---|
| `li $v0, 2` | imprimir float |
| `li $v0, 3` | imprimir double |
| `li $v0, 6` | ler float |
| `li $v0, 7` | ler double |

## Imprimindo Float

```mips
[[aula3_Assembly_MIPS#Program structure|.data]]
PI: .float 3.141592

[[aula3_Assembly_MIPS#Program structure|.text]]
# Prepara para imprimir um float
li $v0, 2 
# Carrega o valor de PI para o registrador $f12
# No caso dos float, os registradores estão no co-processador 1 (cp1)
# SEMPRE devemos colocar o valor do float em $f12, ou o valor correto não é impresso
lwc1 $f12, PI 
syscall
```

## Lendo Float

```mips
# Prepara para ler um float
li $v0, 6
syscall
# O valor lido como float vai para $f0
```

## Exercício

Implementar um programa que lê um float e o imprime.

```mips
.data
msg_pede: .asciiz "Digite um número float: "
msg_mostra: .asciiz "O número digitado foi: "

.text
# Pede o número
li $v0, 4
la $a0, msg_pede
syscall

# Lê o float
li $v0, 6
syscall

# $f0 tem o valor lido

# Imprime a mensagem de resultado
li $v0, 4
la $a0, msg_mostra
syscall

# Move o valor lido de $f0 para $f12 para poder ser impresso
mov.s $f12, $f0

# Imprime o float
li $v0, 2
syscall

# Encerra o programa
li $v0, 10
syscall
```
