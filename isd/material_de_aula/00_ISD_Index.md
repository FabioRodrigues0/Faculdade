# Introdução aos Sistemas Digitais (ISD)
---

topic: 
date: "2025/2026"
course: Engenharia Informática — ISPGAYA
tags:
   #ISD

---

## Índice de Conteudos

| #   | Topico                                                    | Descricao                                           |
| --- | --------------------------------------------------------- | --------------------------------------------------- |
| 01  | [[01_Conversao_de_Bases\|Conversao de Bases]]             | Binario, Decimal, Hexadecimal, Octal                |
| 02  | [[02_Resistencias\|Resistencias]]                         | Tipos, codigo de cores, SMD                         |
| 03  | [[03_LED\|LED]]                                           | Tipos, cores, ligacoes, calculo de resistencia      |
| 04  | [[04_Anotacoes_ISD_Circuitos\|Anotacoes de Circuitos]]    | Portas logicas, tabelas verdade, Karnaugh, CIs TTL  |
| 05  | [[05_Teoria_MUX_DEMUX\|MUX e DEMUX - Teoria]]             | Multiplexadores e Demultiplexadores                 |
| 06  | [[06_Slides_MUX_DEMUX\|MUX e DEMUX - Slides]]             | Slides do professor, aplicacoes, circuitos internos |
| 07  | [[07_Circuitos_Integrados_TTL\|Circuitos Integrados TTL]] | Familia 74LS, pinouts, niveis logicos               |
| 08  | [[08_VHDL\|VHDL]]                                         | Entity, Architecture, WHEN/ELSE, IF/ELSE, CASE      |
| 99  | [[99_guia_estudo_isd\|Guia de Estudo]]                    | Guia completo de estudo para testes                 |

---

## Mapa por Secção

### Fundamentos (01-03)
1. [[01_Conversao_de_Bases]] — Conversão entre bases numéricas
2. [[02_Resistencias]] — Código de cores e tipos de resistências
3. [[03_LED]] — Diodo emissor de luz, calculo de resistência

### Logica Combinatoria (04-07)
4. [[04_Anotacoes_ISD_Circuitos]] — Portas lógicas, Karnaugh, tabelas verdade
5. [[05_Teoria_MUX_DEMUX]] — Resumo teórico MUX e DEMUX
6. [[06_Slides_MUX_DEMUX]] — Slides ISPGAYA com diagramas e circuitos internos
7. [[07_Circuitos_Integrados_TTL]] — Família 74LS, pinouts, níveis lógicos

### Logica Sequencial (dentro de 04)
- [[04_Anotacoes_ISD_Circuitos#Tipo de Armazenamento|Latches e Flip-Flops]] — Latch, FF-D, FF-JK
- [[04_Anotacoes_ISD_Circuitos#Maquina de MOORE|Maquinas de Estados]] — Moore e Mealy
- [[99_guia_estudo_isd#Contadores|Contadores]] — Síncronos, assíncronos, UP/DOWN

### Descricao de Hardware (08)
8. [[08_VHDL]] — VHDL: Entity, Architecture, síntese

### Revisao (99)
99. [[99_guia_estudo_isd]] — Guia de estudo para testes

---

## Relações entre Tópicos

```
01 Conversao de Bases
       |
04 Portas Logicas <---> 07 Circuitos Integrados TTL
       |                         |
04 Mapas de Karnaugh      03 LED + 02 Resistencias
       |
05/06 MUX / DEMUX
       |
04 Flip-Flops (D, JK)
       |
04 Contadores
       |
04 Maquinas de Estados (Moore / Mealy)
       |
08 VHDL
```
