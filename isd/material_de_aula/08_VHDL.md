# VHDL - Descrição e Síntese de Circuitos Digitais

**Fonte:** Slides_VHDL/Slides_VHDL.pdf (Roberto d'Amore, ISBN 85-216-1452-7)
**Disciplina:** [[99_guia_estudo_isd|Introdução aos Sistemas Digitais (ISD)]]

---

## O que é VHDL?

VHDL (VHSIC Hardware Description Language) é uma linguagem de descrição de hardware usada para descrever o comportamento e a estrutura de [[07_Circuitos_Integrados_TTL|circuitos digitais]].

---

## Aspetos Gerais da Linguagem

- Suporta diversos **níveis de hierarquia** (descrições interligadas)
- Diversos **níveis de abstração** são suportados
- É uma **linguagem concorrente**: a ordem dos comandos não importa
- Comandos sequenciais existem apenas em regiões específicas (PROCESS)

---

## Síntese de Circuitos

VHDL não foi originalmente concebida para síntese de circuitos. Nem todas as construções são sintetizáveis.

**Limitações:**
- Falta de correspondência construção/circuito (ex: [[04_Anotacoes_ISD_Circuitos#Flip-Flop|flip-flop]] com dois terminais de relógio)
- Impossibilidade de síntese direta (ex: multiplicação de números reais)

---

## Fluxo de Projeto

```
Especificação
     ↓
Descrição VHDL
     ↓
  ┌──────────────────┬──────────────────┐
  │ Simulador VHDL   │ Ferramenta de    │
  │ (compilação/     │ Síntese          │
  │  simulação)      │                  │
  └──────────────────┴────────┬─────────┘
                              ↓
                     Rede de Ligações
                              ↓
                 Posicionamento & Interligação
                              ↓
                         Construção
```

### Dispositivos alvo:
- **FPGA** — dispositivo lógico programável
- **ASIC** — circuitos integrados de aplicação específica

---

## Entidade de Projeto (Design Entity)

Uma entidade pode representar desde uma simples porta lógica até um sistema completo.

### Duas partes:

1. **Declaração da Entidade (ENTITY)** — define portas de entrada e saída
2. **Arquitetura (ARCHITECTURE)** — descreve as relações entre as portas

---

## Declaração da Entidade

```vhdl
ENTITY entidade_abc IS
  PORT (x0, x1  : IN     tipo_a;   -- entradas
        y0, y1  : OUT    tipo_b;   -- saídas
        y2      : BUFFER tipo_c;   -- saída (ref. interna)
        z0, z1  : INOUT  tipo_d);  -- entrada/saída
END entidade_abc;
```

### Modos de porta:

| Modo | Direção | Descrição |
|------|---------|-----------|
| **IN** | Entrada | Só leitura |
| **OUT** | Saída | Só escrita |
| **BUFFER** | Saída | Pode ser referenciada internamente |
| **INOUT** | Bidirecional | Leitura e escrita |

---

## Tópicos Cobertos nos Slides

- Aspetos gerais da linguagem
- Síntese de circuitos
- Entidade de projeto
- Classes de objetos: constante, variável e sinal
- Tipos
- Operadores
- Construção concorrente **WHEN ELSE**
- Construção concorrente **WITH SELECT**
- Processos e lista de sensibilidade
- Construção sequencial **IF ELSE**
- Construção sequencial **CASE WHEN**
- Circuitos síncronos

---

## Exemplo: Somador

```vhdl
ENTITY soma IS
  PORT (a, b : IN  INTEGER RANGE 7 DOWNTO 0;
        c    : OUT INTEGER RANGE 7 DOWNTO 0);
END soma;

ARCHITECTURE teste OF soma IS
BEGIN
  c <= a + b;
END teste;
```

Este código é sintetizado em:
1. **Nível RTL** → somador com carry
2. **Nível portas** → LUTs e carry chains

---

## Tópicos Relacionados

- [[04_Anotacoes_ISD_Circuitos|Anotações de Circuitos ISD]]
- [[07_Circuitos_Integrados_TTL|Circuitos Integrados TTL]]
- [[05_Teoria_MUX_DEMUX|MUX e DEMUX]]
- [[99_guia_estudo_isd|Guia de Estudo ISD]]
- [[01_Conversao_de_Bases|Conversão de Bases]]
