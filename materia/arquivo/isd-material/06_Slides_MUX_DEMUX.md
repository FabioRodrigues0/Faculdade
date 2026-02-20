---
tags:
  - ISD
---

# Slides MUX/DEMUX (ISPGAYA)

**Fonte:** MUX & DEMUX.pdf — Prof. Justino Lourenco, 21 Out 2020
**Topicos relacionados:** [[05_Teoria_MUX_DEMUX]], [[04_Anotacoes_ISD_Circuitos]], [[07_Circuitos_Integrados_TTL]]

---

## O que e um MUX?

Um MUX (Multiplexador) e um **switch com N entradas e uma saida**. As linhas de selecao definem que entrada passa para a saida.

### Tipos de MUX

| Tipo | Entradas | Linhas de Selecao |
|------|----------|-------------------|
| 2-to-1 | 2 | 1 |
| 4-to-1 | 4 | 2 |
| 8-to-1 | 8 | 3 |
| 16-to-1 | 16 | 4 |

**Formula:** Entradas = 2^N (N = linhas de selecao)

### Diagrama de Blocos MUX

```
              ┌─────┐
 2^N          │     │  1
Inputs ══════►│ MUX │═════► Output
(sources)     │     │       (destination)
              └──┬──┘
                 │
              N  │
          Select Lines
```

---

## Aplicacoes MUX

Exemplo pratico: **Selecao de fonte de audio**

```
MP3 Player ───── D0 ─┐
Laptop ───────── D1 ─┤
Satellite ────── D2 ─┤ MUX ──── Y ──── Surround Sound
Cable TV ─────── D3 ─┘  4:1
                      ↑
                    B  A
```

| B | A | Fonte Selecionada |
|---|---|-------------------|
| 0 | 0 | MP3 Player |
| 0 | 1 | Laptop |
| 1 | 0 | Satellite |
| 1 | 1 | Cable TV |

---

## 4-to-1 Multiplexer (MUX) — Circuito Interno

O circuito interno de um MUX 4:1 usa:
- **4 portas AND** (uma por entrada)
- **1 porta OR** (combina as saidas AND)
- **2 inversores** (para gerar complementos de B e A)

### Circuito logico

```
D0 ─── AND(D0, B̄, Ā) ──┐
D1 ─── AND(D1, B̄, A) ──┤
D2 ─── AND(D2, B, Ā) ──┤── OR ──── Y
D3 ─── AND(D3, B, A) ──┘
```

### Expressao booleana

**Y = D0·B̄·Ā + D1·B̄·A + D2·B·Ā + D3·B·A**

### Tabela de verdade

| B | A | Y |
|---|---|---|
| 0 | 0 | D0 |
| 0 | 1 | D1 |
| 1 | 0 | D2 |
| 1 | 1 | D3 |

---

## Medium Scale Integration (MSI) MUX

Chips MUX em circuitos integrados MSI ([[07_Circuitos_Integrados_TTL|familia 74LS]]):

### 4-to-1 MUX
- Entradas: D0-D3
- Select: A, B
- Output: Y
- Enable: ~G (ativo baixo)

### 8-to-1 MUX (ex: [[07_Circuitos_Integrados_TTL|74LS151]])
- Entradas: D0-D7
- Select: A, B, C
- Output: Y, ~W (saida e complemento)
- Enable: ~G

### 16-to-1 MUX
- Entradas: D0-D15
- Select: A, B, C, D
- Output: Y, ~W
- Enable: ~G

---

## Implementacao de Funcoes com MUX

Um MUX pode implementar **qualquer funcao booleana** diretamente a partir do [[04_Anotacoes_ISD_Circuitos#Mapas de Karnaugh|mapa de Karnaugh]] ou tabela de verdade:

1. Variaveis de entrada → linhas de selecao
2. Valores da funcao (0 ou 1) → ligados as entradas de dados

### Exemplo

Para F(A,B) com tabela:
| A | B | F |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

Liga-se: D0=1, D1=0, D2=1, D3=1, com A e B como seletores.

---

## MUX vs DEMUX — Resumo Visual

```
MUX (n → 1):                    DEMUX (1 → n):

D0 ─┐                                    ┌── Y0
D1 ─┤                                    ├── Y1
D2 ─┤ MUX ── Y          IN ── DEMUX ─────┤── Y2
D3 ─┘                                    └── Y3
    ↑                              ↑
  Select                        Select
```

Ver [[05_Teoria_MUX_DEMUX]] para detalhes sobre DEMUX.

---

## Ver tambem

- [[05_Teoria_MUX_DEMUX]] — Resumo teorico MUX e DEMUX
- [[07_Circuitos_Integrados_TTL]] — CIs 74LS151, 74LS153, 74LS138
- [[04_Anotacoes_ISD_Circuitos]] — Exercicios praticos com MUX
- [[99_guia_estudo_isd]] — Dicas de teste sobre MUX/DEMUX
- [[08_VHDL]] — Implementacao de MUX em VHDL
- [[00_ISD_Index]] — Indice geral ISD
