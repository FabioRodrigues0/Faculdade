---
tags:
  - ISD
---

# MUX e DEMUX - Resumo

**Topicos relacionados:** [[06_Slides_MUX_DEMUX]], [[04_Anotacoes_ISD_Circuitos]], [[07_Circuitos_Integrados_TTL]], [[99_guia_estudo_isd]], [[08_VHDL]]

## Multiplexador (MUX)

**n entradas → 1 saída** | Seleciona 1 entrada baseado em sinais de controlo

**Fórmula:** n = 2^k

- **n** = nº de entradas
- **k** = nº de bits de controlo

**Tabela rapida:**

| Entradas | Bits Controlo | Tipo     |
| -------- | ------------- | -------- |
| 2        | 1             | MUX 2:1  |
| 4        | 2             | MUX 4:1  |
| 8        | 3             | MUX 8:1  |
| 16       | 4             | MUX 16:1 |


**Exemplo MUX 4:1:**

```
I₀ ──┐
I₁ ──┤ MUX ──→ Y
I₂ ──┤  4:1
I₃ ──┘
     ↑
   S₁S₀
```

| S₁  | S₀  | Y   |
| --- | --- | --- |
| 0   | 0   | I₀  |
| 0   | 1   | I₁  |
| 1   | 0   | I₂  |
| 1   | 1   | I₃  |

**Expressão:** Y = S̄₁S̄₀I₀ + S̄₁S₀I₁ + S₁S̄₀I₂ + S₁S₀I₃

---

## Demultiplexador (DEMUX)

**1 entrada → n saídas** | Direciona entrada para 1 saída (inverso do MUX)

**Mesma fórmula:** n = 2^k

**Exemplo DEMUX 1:4:**

```
         ┌──→ Y₀
         ├──→ Y₁
IN ──→ DEMUX ──→ Y₂
      1:4  └──→ Y₃
           ↑
         S₁S₀
```

| S₁  | S₀  | Saída ativa |
| --- | --- | ----------- |
| 0   | 0   | Y₀ = IN     |
| 0   | 1   | Y₁ = IN     |
| 1   | 0   | Y₂ = IN     |
| 1   | 1   | Y₃ = IN     |

**Nota:** Só **1 saída ativa** de cada vez, as outras = 0

---

## MUX vs DEMUX

|            | MUX     | DEMUX        |
| ---------- | ------- | ------------ |
| **Função** | n → 1   | 1 → n        |
| **Uso**    | Seleção | Distribuição |

---

## ENABLE (EN)

- **EN = 1** → Circuito ativo
- **EN = 0** → Saída = 0 (OFF)

---

## Exemplo prático

**Preciso de 6 entradas. Que MUX?**

1. n = 6 → arredondar para potência de 2
2. Próximo: 8 = 2³
3. **Usar MUX 8:1** (3 bits: S₂S₁S₀)
4. 2 entradas ficam não usadas

---

## Ver tambem

- [[06_Slides_MUX_DEMUX]] — Slides ISPGAYA com diagramas e circuitos internos
- [[04_Anotacoes_ISD_Circuitos]] — Exercicios praticos com MUX
- [[07_Circuitos_Integrados_TTL]] — CIs 74LS151, 74LS153, 74LS138
- [[99_guia_estudo_isd]] — Dicas de teste sobre MUX/DEMUX
- [[08_VHDL]] — Implementacao de MUX em VHDL
- [[00_ISD_Index]] — Indice geral ISD
