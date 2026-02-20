---
tags:
  - ISD
---

# Resistências e Código de Cores

**Fonte:** Resistencias.pdf (electronica-pt.com)
**Disciplina:** [[99_guia_estudo_isd|Introdução aos Sistemas Digitais (ISD)]]

---

## O que é uma Resistência?

Resistores são o componente mais básico e comum de todos os componentes eletrónicos. A principal função é "resistir", regular ou definir o fluxo de eletrões (correntes) que os atravessam.

São **componentes passivos**: não contêm fonte de energia, apenas atenuam ou reduzem o sinal de tensão ou corrente. A energia é perdida na forma de calor.

---

## Tipos de Resistências

### Resistor de Carvão
- Grafite (carvão) comprimida, revestida por camada isolante de cerâmica
- O mais comum e barato

### Resistor Metálico (Filme Metálico)
- Cerâmica com filme metálico
- Mais preciso que o de carvão

### Resistor Bobinado
- Fio metálico enrolado sobre suporte isolante
- Para altas potências

---

## Código de Cores (4 Faixas)

As cores numa resistência indicam o seu valor. Leitura da extremidade para o centro:

| Faixa | Significado |
|-------|-------------|
| 1ª Faixa | 1º dígito |
| 2ª Faixa | 2º dígito |
| 3ª Faixa | Multiplicador (fator ×10ⁿ) |
| 4ª Faixa | Tolerância (%) |

### Tabela de Cores

| Cor | Valor | Multiplicador | Tolerância |
|-----|-------|---------------|------------|
| Preto | 0 | ×1 | — |
| Castanho | 1 | ×10 | ±1% |
| Vermelho | 2 | ×100 | ±2% |
| Laranja | 3 | ×1.000 | ±3% |
| Amarelo | 4 | ×10.000 | ±4% |
| Verde | 5 | ×100.000 | — |
| Azul | 6 | ×1.000.000 | — |
| Violeta | 7 | — | — |
| Cinzento | 8 | — | — |
| Branco | 9 | — | — |
| Ouro | — | ×0.1 | ±5% |
| Prata | — | ×0.01 | ±10% |

### Exemplo

Cores: Amarelo (4), Violeta (7), Laranja (×1000), Prata (±10%)
- Valor: 47 × 1000 = **47 KΩ ±10%**

---

## Resistências com 5 e 6 Faixas

- **5 faixas**: 3 dígitos + multiplicador + tolerância (maior precisão)
- **6 faixas**: 3 dígitos + multiplicador + tolerância + coeficiente de temperatura

---

## Resistor SMD

Marcação numérica direta no componente:
- **122** → 12 × 10² = **1200 Ω = 1.2 KΩ**
- **1R6** → O "R" indica vírgula: **1.6 Ω**
- **R22** → O "R" indica "0.": **0.22 Ω**

---

## Aplicação em Sistemas Digitais

- Limitação de corrente para [[03_LED|LEDs]]
- Pull-up/pull-down em [[07_Circuitos_Integrados_TTL|circuitos TTL]]
- Divisores de tensão
- Redes resistivas em [[01_Conversao_de_Bases|conversores D/A]]

---

## Tópicos Relacionados

- [[03_LED|LEDs e Díodos Emissores de Luz]]
- [[07_Circuitos_Integrados_TTL|Circuitos Integrados TTL]]
- [[99_guia_estudo_isd|Guia de Estudo ISD]]
- [[04_Anotacoes_ISD_Circuitos|Anotações de Circuitos]]
