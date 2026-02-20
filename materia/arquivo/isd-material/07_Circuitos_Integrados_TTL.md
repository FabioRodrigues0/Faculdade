---
tags:
  - ISD
---

# Circuitos Integrados TTL (74-series)

**Fonte:** ON_Semiconductor_LSTTL_Data_DL121-D.pdf
**Topicos relacionados:** [[04_Anotacoes_ISD_Circuitos]], [[03_LED]], [[02_Resistencias]], [[05_Teoria_MUX_DEMUX]]

---

## O que e TTL?

**TTL** = Transistor-Transistor Logic

Familia de circuitos integrados digitais que utiliza transistores bipolares. A serie **74LS** (Low-power Schottky) e a mais utilizada em laboratorio.

- **Fabricante referencia:** ON Semiconductor (anteriormente Motorola)
- **Documento:** LS TTL Data (DL121/D, Rev. 6, Jan-2000)
- **Alimentacao:** VCC = 5V (tipico)

---

## Niveis Logicos TTL

| Parametro | Minimo | Tipico | Maximo |
|-----------|--------|--------|--------|
| VIL (entrada LOW) | — | — | 0.8V |
| VIH (entrada HIGH) | 2.0V | — | — |
| VOL (saida LOW) | — | — | 0.4V |
| VOH (saida HIGH) | 2.7V | — | — |

> **Regra pratica:** 0V-0.8V = LOW, 2V-5V = HIGH

---

## CIs TTL Comuns na Serie 74LS

### Portas Logicas Basicas

| CI | Funcao | Conteudo |
|----|--------|----------|
| 74LS00 | NAND | 4x portas NAND de 2 entradas |
| 74LS02 | NOR | 4x portas NOR de 2 entradas |
| 74LS04 | NOT | 6x inversores (NOT) |
| 74LS08 | AND | 4x portas AND de 2 entradas |
| 74LS32 | OR | 4x portas OR de 2 entradas |
| 74LS86 | XOR | 4x portas XOR de 2 entradas |

### Multiplexadores e Demultiplexadores

| CI | Funcao | Descricao |
|----|--------|-----------|
| 74LS151 | MUX 8:1 | [[05_Teoria_MUX_DEMUX|Multiplexador]] 8 entradas, 1 saida |
| 74LS153 | MUX 4:1 dual | 2x MUX 4:1 |
| 74LS157 | MUX 2:1 quad | 4x MUX 2:1 |
| 74LS138 | DEMUX 1:8 | Decodificador/[[05_Teoria_MUX_DEMUX|Demultiplexador]] 3-para-8 |
| 74LS139 | DEMUX 1:4 dual | 2x decodificador 2-para-4 |

### Flip-Flops e Registos

| CI | Funcao | Descricao |
|----|--------|-----------|
| 74LS74 | FF-D dual | 2x Flip-Flop tipo D com preset e clear |
| 74LS76 | FF-JK dual | 2x Flip-Flop tipo JK |
| 74LS164 | Shift Register | Registo de deslocamento 8 bits (serie-paralelo) |
| 74LS174 | FF-D hex | 6x Flip-Flop D com clear comum |
| 74LS175 | FF-D quad | 4x Flip-Flop D com clear comum |

### Contadores

| CI | Funcao | Descricao |
|----|--------|-----------|
| 74LS90 | Contador decada | Contador BCD 0-9 |
| 74LS93 | Contador 4-bit | Contador binario 0-15 |
| 74LS161 | Contador sincrono | Contador binario sincrono 4-bit com load |
| 74LS163 | Contador sincrono | Contador binario sincrono 4-bit com clear sincrono |
| 74LS191 | Contador UP/DOWN | Contador binario sincrono UP/DOWN 4-bit |
| 74LS192 | Contador UP/DOWN BCD | Contador BCD sincrono UP/DOWN |

### Decodificadores

| CI | Funcao | Descricao |
|----|--------|-----------|
| 74LS47 | BCD-7seg | Decodificador BCD para display 7 segmentos (anodo comum) |
| 74LS48 | BCD-7seg | Decodificador BCD para display 7 segmentos (catodo comum) |

---

## Pinout Tipico (14 pinos)

A maioria dos CIs TTL simples tem **14 pinos** (DIP-14):

```
        ┌──U──┐
 Pin 1  │     │ Pin 14 (VCC = +5V)
 Pin 2  │     │ Pin 13
 Pin 3  │     │ Pin 12
 Pin 4  │     │ Pin 11
 Pin 5  │     │ Pin 10
 Pin 6  │     │ Pin 9
 Pin 7  │     │ Pin 8
(GND)   └─────┘
```

> **Regra:** Pino 7 = GND, Pino 14 = VCC (+5V)

### Exemplo: 74LS08 (4x AND)

```
        ┌──U──┐
  1A ──│1  14│── VCC
  1B ──│2  13│── 4B
  1Y ──│3  12│── 4A
  2A ──│4  11│── 4Y
  2B ──│5  10│── 3B
  2Y ──│6   9│── 3A
 GND ──│7   8│── 3Y
        └─────┘
```

---

## Ligacao de [[03_LED]] a CIs TTL

Para ligar um LED a uma saida TTL:

```
Saida TTL ──── R ──── LED ──── GND
              (330Ω)  (+) (-)
```

- Resistencia tipica: **330 Ohms** (para 5V, LED vermelho ~2V, ~10mA)
- Ver [[03_LED#Calculo da Resistencia Limitadora|calculo da resistencia]] para LED
- Ver [[02_Resistencias#Codigo de 4 Bandas|codigo de cores]] para identificar valor

---

## Familias TTL

| Familia | Prefixo | Caracteristica |
|---------|---------|----------------|
| Standard | 74xx | Original |
| Low-power | 74Lxx | Menor consumo |
| Schottky | 74Sxx | Mais rapida |
| **Low-power Schottky** | **74LSxx** | **Mais usada (equilibrio)** |
| Advanced LS | 74ALSxx | Melhorada |
| FAST | 74Fxx | Muito rapida |

> A serie **74LS** e a mais utilizada em laboratorio por oferecer bom equilibrio entre velocidade e consumo.

---

## Ver tambem

- [[04_Anotacoes_ISD_Circuitos]] — Uso pratico de CIs em circuitos
- [[05_Teoria_MUX_DEMUX]] — MUX e DEMUX em detalhe
- [[06_Slides_MUX_DEMUX]] — Slides ISPGAYA sobre MUX/DEMUX
- [[03_LED]] — Ligacao de LEDs a saidas TTL
- [[02_Resistencias]] — Resistencias limitadoras
- [[01_Conversao_de_Bases]] — Conversao binaria para enderecamento
- [[00_ISD_Index]] — Indice geral ISD
