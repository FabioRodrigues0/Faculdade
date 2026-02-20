---
tags:
  - AMI
---

# Correção — Simulação de Teste AMI (Teste 8)

> [!info] Informação
> **Disciplina:** Análise Matemática I
> **Data da correção:** 2026-02-13
> **Nota estimada:** 13/20 valores

---

## Questão 1 — Domínio (2 val)

**Enunciado:** $f(x) = \dfrac{\ln(x-1)}{\sqrt{4-x}}$

**Tua resposta:**
- $4 - x > 0 \Rightarrow x > 4$
- $D_f = \{x \in \mathbb{R} \mid x > 4\}$

**Correção:**

> [!warning] Incompleto + erro de sinal — 0.5/2 val

**Erro 1:** Inverteste o sinal!
- $4 - x > 0 \Rightarrow -x > -4 \Rightarrow x < 4$ (não $x > 4$)

**Erro 2:** Faltou a condição do logaritmo!

**Condições corretas:**
1. **Logaritmo:** $x - 1 > 0 \Rightarrow x > 1$
2. **Raiz no denominador:** $4 - x > 0 \Rightarrow x < 4$

**Domínio correto:** $D_f = ]1, 4[$

> [!tip] Lembrar
> Quando multiplicas/divides por número negativo, **inverte o sinal da desigualdade!**

---

## Questão 2a — Limite (1 val)

**Enunciado:** $\displaystyle \lim_{x \to 3} \frac{x^2 - 9}{x - 3}$

**Tua resposta:** $= 2x = 2(3) = 6$

**Correção:**

> [!success] Correto — 1/1 val

Método alternativo (factorização):
$$\frac{x^2-9}{x-3} = \frac{(x-3)(x+3)}{x-3} = x+3$$
$$\lim_{x \to 3} (x+3) = 6 \checkmark$$

---

## Questão 2b — Limite no infinito (1 val)

**Enunciado:** $\displaystyle \lim_{x \to +\infty} \frac{2x^3 + x}{x^3 - 1}$

**Tua resposta:** $= 2$

**Correção:**

> [!success] Correto — 1/1 val

Graus iguais (3 = 3), divide coeficientes: $\frac{2}{1} = 2$ ✓

---

## Questão 3 — Continuidade com k (2 val)

**Enunciado:** Determinar $k$ para que $f$ seja contínua em $x = 2$

**Tua resposta:**
$$f(x) = \frac{x^2-4}{x-2} = \frac{(x-2)(x+2)}{x-2} = x+2 = 2+2 = 4$$
$$k = 4$$

**Correção:**

> [!success] Correto — 2/2 val

---

## Questão 4 — Teorema de Bolzano (2 val)

**Tua resposta:**
- $f(0) = 0 - 0 + 1 = 1 > 0$
- $f(1) = 1 - 3 + 1 = -1 < 0$
- Existe zero entre $[0, 1]$

**Correção:**

> [!success] Correto — 2/2 val

Sinais opostos, função contínua → pelo Teorema de Bolzano existe pelo menos um zero. ✓

---

## Questão 5 — Assíntotas (2 val)

**Enunciado:** $f(x) = \frac{x^2 + 2x}{x - 1}$

**Tua resposta:**
- AV: $x = 1$ ✓
- $m = 1$ (após várias tentativas)
- $b = 3$
- AO: $y = x + 3$ ✓

**Correção:**

> [!success] Correto — 2/2 val
> Mesmo com dificuldades no cálculo de $m$, chegaste ao resultado certo!

**Verificação:**
- $m = \lim_{x \to \infty} \frac{x^2+2x}{x(x-1)} = \lim \frac{x^2+2x}{x^2-x} = 1$ ✓
- $b = \lim \frac{x^2+2x-x(x-1)}{x-1} = \lim \frac{3x}{x-1} = 3$ ✓

> [!tip] Progresso nas Assíntotas Oblíquas!
> Conseguiste! O erro inicial no $m$ foi identificado e corrigido. É assim que se aprende.

---

## Questão 6 — Derivadas (2 val)

**Tua resposta:** Não resolvido

**Correção:**

> [!error] Não respondido — 0/2 val

Ver guia [[guia_reta_tangente_extremos]] criado para ti.

**a) Reta tangente em $x = 0$:**

$f(x) = x^3 - 6x^2 + 9x + 1$

$f'(x) = 3x^2 - 12x + 9$

- Ponto: $f(0) = 1$ → $(0, 1)$
- Declive: $f'(0) = 9$

**Reta tangente:** $y - 1 = 9(x - 0) \Rightarrow y = 9x + 1$

**b) Extremos:**

$f'(x) = 0 \Rightarrow 3x^2 - 12x + 9 = 0 \Rightarrow x^2 - 4x + 3 = 0$

$(x-1)(x-3) = 0 \Rightarrow x = 1$ ou $x = 3$

$f''(x) = 6x - 12$

- $f''(1) = -6 < 0$ → **Máximo** em $x = 1$: $f(1) = 1 - 6 + 9 + 1 = 5$
- $f''(3) = 6 > 0$ → **Mínimo** em $x = 3$: $f(3) = 27 - 54 + 27 + 1 = 1$

---

## Questão 7a — Primitiva básica (1 val)

**Enunciado:** $\int (4x^3 - 3x + 2) \, dx$

**Tua resposta:** $x^4 - \frac{3x^2}{2} + 2x + C$

**Correção:**

> [!success] Correto — 1/1 val

---

## Questão 7b — Primitiva (1 val)

**Enunciado:** $\int \frac{4x}{x^2 + 1} \, dx$

**Tua resposta:** $4x \arctan(x) + C$

**Correção:**

> [!error] Errado — 0/1 val

**O teu erro:** Confundiste com $\int \frac{1}{x^2+1} dx = \arctan(x)$

Mas aqui tens **$x$ no numerador**! É o padrão $\frac{f'(x)}{f(x)}$:

- $f(x) = x^2 + 1 \Rightarrow f'(x) = 2x$
- Numerador $4x = 2 \cdot 2x$

$$\int \frac{4x}{x^2+1} dx = 2 \int \frac{2x}{x^2+1} dx = 2\ln|x^2+1| + C = 2\ln(x^2+1) + C$$

> [!important] Regra
> - $\int \frac{1}{x^2+1} dx = \arctan(x) + C$ (sem $x$ no numerador)
> - $\int \frac{x}{x^2+1} dx = \frac{1}{2}\ln(x^2+1) + C$ (com $x$ no numerador)

---

## Questão 8 — Integração por partes (2 val)

**Enunciado:** $\int x \cdot e^x \, dx$

**Tua resposta:** $x \cdot e^x - e^x + C$

**Correção:**

> [!success] Correto — 2/2 val

Podes simplificar: $e^x(x - 1) + C$

---

## Questão 9 — Integral definido (2 val)

**Enunciado:** $\int_1^2 (2x + 1) \, dx$

**Tua resposta:**
- Primitiva: $[x^2 + x]_1^2$ ✓
- Cálculo: $(2/2 + 2) + (8/2 + 2) = 3 + 6 = 9$ ✗

**Correção:**

> [!warning] Parcialmente correto — 1/2 val

A primitiva está correta, mas **somaste em vez de subtrair**!

$$[x^2 + x]_1^2 = F(2) - F(1) = (4 + 2) - (1 + 1) = 6 - 2 = 4$$

**Resultado correto:** $4$

> [!error] Erro no TFC
> É $F(b) - F(a)$, não $F(a) + F(b)$!

---

## Questão 10 — Área (2 val)

**Enunciado:** Área entre $f(x) = x^2$ e $g(x) = x$ em $[0, 1]$

**Tua resposta:**
- $A = \int_0^1 (x^2 - x) dx$
- $= 0 - 5/6 = -5/6$

**Correção:**

> [!warning] Parcialmente correto — 0.5/2 val

**Erro 1:** Qual está por cima?
- Testar $x = 0.5$: $f(0.5) = 0.25$, $g(0.5) = 0.5$
- $g > f$ → a integral é $\int (g - f) = \int (x - x^2)$, não $(x^2 - x)$

**Erro 2:** Área é sempre positiva!

**Cálculo correto:**
$$A = \int_0^1 (x - x^2) dx = \left[\frac{x^2}{2} - \frac{x^3}{3}\right]_0^1 = \frac{1}{2} - \frac{1}{3} = \frac{1}{6}$$

---

## Resumo da Avaliação

| Questão | Tema | Cotação | Nota | Observação |
|:-------:|------|:-------:|:----:|------------|
| 1 | Domínio | 2 | 0.5 | Erro de sinal + faltou ln |
| 2a | Limite | 1 | 1 | Correto |
| 2b | Limite ∞ | 1 | 1 | Correto |
| 3 | Continuidade k | 2 | 2 | Correto |
| 4 | Bolzano | 2 | 2 | Correto |
| 5 | Assíntotas | 2 | 2 | **AV + AO corretas!** |
| 6 | Derivadas | 2 | 0 | Não resolvido |
| 7a | Primitiva | 1 | 1 | Correto |
| 7b | Primitiva | 1 | 0 | Confundiu arctan com ln |
| 8 | Por partes | 2 | 2 | Correto |
| 9 | Int. definido | 2 | 1 | Somou em vez de subtrair |
| 10 | Área | 2 | 0.5 | Função errada + F(a)-F(b) |

---

## Nota Final Estimada: 13/20

---

## Análise de Progresso

> [!success] Grandes Vitórias!
> - **Assíntota oblíqua CORRETA!** Mesmo com dificuldade no $m$, corrigiste e chegaste a $y = x + 3$
> - Integração por partes perfeita
> - Bolzano, continuidade, limites — tudo bem

> [!warning] A Melhorar
> 1. **Domínios:** Cuidado com sinais nas desigualdades!
> 2. **Padrão $\frac{f'(x)}{f(x)}$:** Se tem $x$ no numerador, é $\ln$, não $\arctan$
> 3. **TFC:** É $F(b) - F(a)$, não soma!
> 4. **Áreas:** Testar qual função está por cima

> [!error] Urgente
> - Estudar **reta tangente e extremos** (não tentaste a questão 6)
