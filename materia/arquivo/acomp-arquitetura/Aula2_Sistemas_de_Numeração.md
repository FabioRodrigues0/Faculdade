---
tags:
  - ACOMP
---

# Sistemas de Numeração e Conversão

Este documento detalha os sistemas de numeração, um conceito fundamental da [[aula1_arquitetura_de_computadores|Arquitetura de Computadores]].
## Sistemas de Numeração e Conversão

### Sistemas de Numeração

No âmbito computacional, os sistemas de numeração utilizados atualmente são esses: decimal, binário, octal e o hexadecimal. Então, vamos conhecer cada um deles...

#### Decimal - Base 10
Sistema no qual possui 10 algarismos para representá-lo, que são estes: 0, 1, 2, 3, 4, 5, 6, 7, 8 e 9.

#### Binário - Base 2
Sistema no qual possui 2 algarismos para representá-lo, que são estes: 0 e 1.

#### Octal - Base 8
Sistema no qual possui 8 algarismos para representá-lo, que são estes: 0, 1, 2, 3, 4, 5, 6, 7.

#### Hexadecimal - Base 16
Sistema no qual possui 16 algarismos para representá-lo, que são estes: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E e F.
Equivalências: A = 10, B = 11, C = 12, D = 13, E = 14 e F = 15.

##### Observações Gerais
Reparem que o maior algarismo de um sistema de numeração sempre será ( base – 1).

### Tabela de Valores
| Decimal | Binário | Octal | Hexadecimal |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 1 | 0001 | 1 | 1 |
| 2 | 0010 | 2 | 2 |
| 3 | 0011 | 3 | 3 |
| 4 | 0100 | 4 | 4 |
| 5 | 0101 | 5 | 5 |
| 6 | 0110 | 6 | 6 |
| 7 | 0111 | 7 | 7 |
| 8 | 1000 | 10 | 8 |
| 9 | 1001 | 11 | 9 |
| 10 | 1010 | 12 | A |
| 11 | 1011 | 13 | B |
| 12 | 1100 | 14 | C |
| 13 | 1101 | 15 | D |
| 14 | 1110 | 16 | E |
| 15 | 1111 | 17 | F |

---

### Conversão entre Bases

#### Conversão Binário >>> Decimal
A conversão binário >>> decimal consiste em multiplicar o algarismo do número binário pela base elevada ao expoente de sua colocação no número, lembrando que a base do número binário é 2.

**Ex: 10110₂ => _______₁₀**

1 * 2⁴ + 0 * 2³ + 1 * 2² + 1 * 2¹ + 0 * 2⁰ = 22

**10110₂ => 22₁₀**

---

#### Conversão Decimal >>> Binário
A conversão decimal >>> binário consiste em dividir o número decimal pela base 2, obtendo um resultado e um resto. Caso o resultado possa ainda ser divido pela base, repete-se a operação até termos um resultado que não possa mais ser dividido pela base. Feito isso, teremos o número em questão, sendo o primeiro dígito igual ao último resultado, seguido dos restos das divisões, no sentido ascendente.

**Ex: 22₁₀ => _______₂**

O resultado é 10110.

**22₁₀ => 10110₂**

---

#### Conversão Octal >>> Decimal
A conversão octal >>> decimal consiste em multiplicar o algarismo do número octal pela base elevada ao expoente de sua colocação no número, lembrando que a base do número octal é 8.

**Ex: 627₈ => _______₁₀**

6 * 8² + 2 * 8¹ + 7 * 8⁰ = 407

**627₈ => 407₁₀**

---

#### Conversão Decimal >>> Octal
A conversão decimal >>> octal consiste em dividir o número decimal pela base 8, obtendo um resultado e um resto. Caso o resultado possa ainda ser divido pela base, repete-se a operação até termos um resultado que não possa mais ser dividido pela base. Feito isso, teremos o número em questão, sendo o primeiro dígito igual ao último resultado, seguido dos restos das divisões, no sentido ascendente.

**Ex: 407₁₀ => _______₈**

O resultado é 627.

**407₁₀ => 627₈**

---

#### Conversão Hexadecimal >>> Decimal
A conversão hexadecimal >>> decimal consiste em multiplicar o algarismo do número hexadecimal pela base elevada ao expoente de sua colocação no número, lembrando que a base do número hexadecimal é 16.

**OBS: Não esqueça de transformar as letras em números!**
A = 10 | B = 11 | C = 12
D = 13 | E = 14 | F = 15

**Ex: CF80₁₆ => _______₁₀**

12 * 16³ + 15 * 16² + 8 * 16¹ + 0 * 16⁰ = 53120

**CF80₁₆ => 53120₁₀**

---

#### Conversão Decimal >>> Hexadecimal
A conversão decimal >>> hexadecimal consiste em dividir o número decimal pela base 16, obtendo um resultado e um resto. Caso o resultado possa ainda ser divido pela base, repete-se a operação até termos um resultado que não possa mais ser dividido pela base. Feito isso, teremos o número em questão, sendo o primeiro dígito igual ao último resultado, seguido dos restos das divisões, no sentido ascendente.

**OBS: Não esqueça de transformar os números em letras!**
A = 10 | B = 11 | C = 12
D = 13 | E = 14 | F = 15

**Ex: 53120₁₀ => _______₁₆**

O resultado é CF80.

**53120₁₀ => CF80₁₆**

---

### Exercícios
Para mais exercícios consulta a pasta [[🧩_exercicios]] 
