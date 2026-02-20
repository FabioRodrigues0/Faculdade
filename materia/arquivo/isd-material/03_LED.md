---
tags:
  - ISD
---

# LED - Diodo Emissor de Luz

**Fonte:** LED.pdf (electronica-pt.com)
**Topicos relacionados:** [[02_Resistencias]], [[07_Circuitos_Integrados_TTL]], [[04_Anotacoes_ISD_Circuitos]]

---

## O que e um LED?

O LED e um **diodo semicondutor (PN)** que, quando sujeito a energia, emite luz de espetro reduzido. A luz emitida pode ser visivel ou nao visivel (infravermelhos, ultravioletas).

- **LED** = Light Emitting Diode (Diodo Emissor de Luz)
- Apareceu no mercado em **1962**, inicialmente na cor vermelha
- Processo de emissao: **eletroluminescencia** (aplicacao de fonte eletrica a juncao P-N polarizada diretamente)

### Vantagens

- Consumo reduzido de energia
- Resistencia fisica elevada
- Reduzida dimensao
- Vida muito longa (se condicoes de funcionamento respeitadas)

---

## LED SMD

LED SMD funciona da mesma forma que um convencional, mas e fabricado para **montagem em superficie** (soldado sobre a placa de circuito).

- Sem ligacoes tradicionais (pernas)
- Dimensoes mais reduzidas
- Calor emitido muito reduzido
- Uteis em espacos de reduzida dimensao

---

## Identificacao e Ligacoes

Um LED deve ser ligado de forma correta:

- **Anodo (+)**: ponta mais longa, eletro maior no interior
- **Catodo (-)**: ponta mais curta, corte no lado da capsula

```
Simbolo LED:
  ──►|──
  (+)   (-)
 Anodo  Catodo
```

> Os LEDs podem ficar danificados por ligacao incorreta ou na soldadura (se demorar demasiado tempo).

---

## Cor do LED

A cor da luz emitida pelo LED e determinada pelo **material semicondutor**, nao pela cor da capsula plastica.

### Materiais e Cores

- **LED Vermelho**: Arseneto de Galio e Aluminio (GaAlAs); Fosforeto de Galio e Arseneto (GaAsP)
- **LED Amarelo e Verde**: Fosforeto de Galio (GaP); Fosforeto de Indio, Galio e Aluminio (InGaAlP)
- **LED Infravermelho**: Arseneto de Galio (GaAs); Arseneto de Fosforeto de Aluminio e Galio (GaAlAs)

### Cores disponiveis

Vermelho, Laranja, Amarelo, Verde, Azul e Branco (branco e azul sao mais caros).

---

## Tabela de Caracteristicas dos LEDs

| Comp. Onda (nm) | Cor | Tensao Fwd (Vf@20mA) | Material |
|---|---|---|---|
| 940 | Infravermelho | 1.5 | — |
| 880 | Infravermelho | 1.7 | — |
| 850 | Infravermelho | 1.7 | — |
| 660 | Ultra Red | 1.8 | — |
| 635 | High Efficiency Red | 2.0 | — |
| 633 | Super Red | 2.2 | InGaAlP |
| 620 | Super Orange | 2.2 | — |
| 605 | Orange | 2.1 | — |
| 595 | Super Yellow | 2.2 | — |
| 592 | Super Pure Yellow | 2.1 | — |
| 585 | Yellow | 2.1 | GaAsP/GaP |
| 574 | Super Lime Yellow | 2.4 | InGaAlP |
| 570 | Super Lime Green | 2.0 | InGaAlP |
| 565 | High Efficiency Green | 2.1 | GaP/GaP |
| 560 | Super Pure Green | 2.1 | InGaAlP |
| 555 | Pure Green | 2.1 | GaP/GaP |
| 525 | Aqua Green | 3.5 | SiC/GaN |
| 505 | Blue Green | 3.5 | SiC/GaN |
| 470 | Super Blue | 3.6 | SiC/GaN |
| 430 | Ultra Blue | 3.8 | SiC/GaN |
| 4500K | Incandescent White | 3.6 | SiC/GaN |
| 6500K | Pale White | 3.6 | SiC/GaN |
| 8000K | Cool White | 3.6 | SiC/GaN |

---

## Zona de Funcionamento

- **Polarizacao Direta**: zona de trabalho (~2.5V a 3.7V dependendo da cor), corrente tipica **20mA**
- **Polarizacao Reversa**: LED OFF (5 a 6V de ruptura)
- **Corrente excessiva**: LED destruido

---

## Tipos de LEDs

### Por dimensao/forma
- LED cilindrico 5mm (mais comum, ~80% da producao mundial)
- LED cilindrico 3mm
- LEDs de superficie (SMD)
- LEDs para paineis avisadores

### Bicolores
- Dois LEDs ligados em **anti-paralelo** numa unica capsula
- Pode produzir 3 cores (vermelho, verde, ou ambos = amarelo/laranja)
- Direcao da corrente determina a cor

---

## Calculo da Resistencia Limitadora

Para proteger o LED, e necessaria uma [[02_Resistencias|resistencia]] em serie.

### Formula

```
R = (Vs - Vf) / If
```

Onde:
- **R** = resistencia necessaria (Ohms)
- **Vs** = tensao da fonte (V)
- **Vf** = tensao direta do LED (V) — tipicamente 1.8-3.6V
- **If** = corrente direta (A) — tipicamente 20mA = 0.020A

### Exemplo pratico

LED vermelho (Vf = 2V) com fonte de 5V:

```
R = (5 - 2) / 0.020 = 3 / 0.020 = 150 Ohms
```

> Usar resistencia igual ou superior ao valor calculado. Ver [[02_Resistencias]] para codigo de cores.

---

## Ver tambem

- [[02_Resistencias]] — Codigo de cores e calculo
- [[07_Circuitos_Integrados_TTL]] — Ligacao de LEDs a CIs TTL (74LS)
- [[04_Anotacoes_ISD_Circuitos]] — Circuitos praticos com LEDs
- [[01_Conversao_de_Bases]] — Conversao binario/decimal para displays
- [[00_ISD_Index]] — Indice geral ISD
