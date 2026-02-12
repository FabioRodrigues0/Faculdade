# Conversao Entre Bases Numericas

**Fonte:** 0ConversaodeBases.pdf
**Topicos relacionados:** [[04_Anotacoes_ISD_Circuitos]], [[07_Circuitos_Integrados_TTL]], [[08_VHDL]]

---

## Conversao de Decimal para Binario

Para encontrar o numero binario correspondente a um numero decimal, sao realizadas **sucessivas divisoes** do numero decimal por 2.

O resto da divisao de cada operacao e coletado de forma invertida, da ultima para a primeira operacao de divisao.

### Exemplo: 25 em binario

```
25 / 2 = 12  resto 1
12 / 2 = 6   resto 0
 6 / 2 = 3   resto 0
 3 / 2 = 1   resto 1
 1 / 2 = 0   resto 1
```

Leitura dos restos de baixo para cima: **25₁₀ = 11001₂**

---

## Conversao de Binario para Decimal

Para descobrir o numero decimal correspondente a um numero binario, calcula-se a soma de cada digito multiplicado por 2 elevado a posicao colunar (da direita para a esquerda, comecando em 0).

### Exemplo: 11001 em decimal

| 1 | 1 | 0 | 0 | 1 |
|---|---|---|---|---|
| 1x2⁴ | 1x2³ | 0x2² | 0x2¹ | 1x2⁰ |

**16 + 8 + 0 + 0 + 1 = 25**

### Formula geral

Para um numero binario `bₙbₙ₋₁...b₁b₀`:

**Valor decimal = bₙ x 2ⁿ + bₙ₋₁ x 2ⁿ⁻¹ + ... + b₁ x 2¹ + b₀ x 2⁰**

---

## Conversao de Decimal para Hexadecimal

Identica a conversao de decimal para binario, exceto que a **divisao e feita por 16** (base dos hexadecimais).

### Tabela Hex

| Decimal | Hexadecimal |
|---------|-------------|
| 0-9     | 0-9         |
| 10      | A           |
| 11      | B           |
| 12      | C           |
| 13      | D           |
| 14      | E           |
| 15      | F           |

### Exemplo: 223 em hexadecimal

```
223 / 16 = 13  resto 15 (F)
 13 / 16 = 0   resto 13 (D)
```

Resultado: **223₁₀ = DF₁₆**

### Exemplo: 76 em hexadecimal

```
76 / 16 = 4   resto 12 (C)
 4 / 16 = 0   resto 4
```

Resultado: **76₁₀ = 4C₁₆**

---

## Conversao de Hexadecimal para Decimal

Soma dos digitos hexadecimais multiplicados pela base 16 elevada a posicao colunar (direita para esquerda, comecando em 0).

### Exemplo: 10A₁₆ em decimal

| 1 | 0 | A |
|---|---|---|
| 1x16² | 0x16¹ | 10x16⁰ |

**256 + 0 + 10 = 266**

### Exemplo: CB₁₆ em decimal

| C | B |
|---|---|
| 12x16¹ | 11x16⁰ |

**192 + 11 = 203**

> **Nota:** Os digitos hexadecimais A, B, C, D, E, F sao substituidos pelos valores decimais 10, 11, 12, 13, 14, 15 para o calculo.

---

## Conversao de Decimal para Octal

Divide-se o decimal pela base 8 (octal).

### Exemplo: 217 em octal

```
217 / 8 = 27  resto 1
 27 / 8 = 3   resto 3
  3 / 8 = 0   resto 3
```

Resultado: **217₁₀ = 331₈**

### Exemplo: 37 em octal

```
37 / 8 = 4   resto 5
 4 / 8 = 0   resto 4
```

Resultado: **37₁₀ = 45₈**

---

## Conversao de Octal para Decimal

Soma dos digitos octais multiplicados pela base 8 elevada a posicao colunar.

### Exemplo: 331₈ em decimal

| 3 | 3 | 1 |
|---|---|---|
| 3x8² | 3x8¹ | 1x8⁰ |

**192 + 24 + 1 = 217**

### Exemplo: 45₈ em decimal

| 4 | 5 |
|---|---|
| 4x8¹ | 5x8⁰ |

**32 + 5 = 37**

---

## Conversao de Binario para Hexadecimal

Separa-se o numero binario em **grupos de 4 bits** (da direita para a esquerda). Cada grupo e convertido para o seu equivalente hexadecimal.

> Se o numero de digitos nao for multiplo de 4, completa-se com zeros a esquerda.

### Exemplo: 01011011₂ para hexadecimal

| Grupo | 0101 | 1011 |
|-------|------|------|
| Calculo | 0+4+0+1 = 5 | 8+0+2+1 = 11 |
| Hex | 5 | B |

Resultado: **01011011₂ = 5B₁₆**

### Exemplo: 111101₂ para hexadecimal

Completar com zeros: **00111101**

| Grupo | 0011 | 1101 |
|-------|------|------|
| Calculo | 0+0+2+1 = 3 | 8+4+0+1 = 13 |
| Hex | 3 | D |

Resultado: **111101₂ = 3D₁₆**

---

## Conversao de Binario para Octal

Separa-se o numero binario em **grupos de 3 bits** (da direita para a esquerda). Cada grupo e convertido para o seu equivalente octal.

> Se o numero de digitos nao for multiplo de 3, completa-se com zeros a esquerda.

### Exemplo: 110101₂ para octal

| Grupo | 110 | 101 |
|-------|-----|-----|
| Calculo | 4+2+0 = 6 | 4+0+1 = 5 |
| Octal | 6 | 5 |

Resultado: **110101₂ = 65₈**

---

## Resumo de Metodos

| Conversao | Metodo |
|-----------|--------|
| Decimal → Binario | Divisoes sucessivas por 2 |
| Binario → Decimal | Soma ponderada (potencias de 2) |
| Decimal → Hexadecimal | Divisoes sucessivas por 16 |
| Hexadecimal → Decimal | Soma ponderada (potencias de 16) |
| Decimal → Octal | Divisoes sucessivas por 8 |
| Octal → Decimal | Soma ponderada (potencias de 8) |
| Binario → Hexadecimal | Agrupar em 4 bits |
| Binario → Octal | Agrupar em 3 bits |

---

## Ver tambem

- [[04_Anotacoes_ISD_Circuitos]] — Portas logicas e tabelas verdade
- [[07_Circuitos_Integrados_TTL]] — Familia 74LS e niveis logicos
- [[03_LED]] — Calculos com binario em circuitos
- [[08_VHDL]] — Representacao binaria em VHDL
- [[00_ISD_Index]] — Indice geral ISD
