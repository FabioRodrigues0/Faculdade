---
tags:
  - AMI
---

# Correção — Simulação de Teste AMI

> [!info] Informação
> **Disciplina:** Análise Matemática I
> **Data da correção:** 2026-02-13
> **Nota estimada:** 11/20 valores

---

## Questão 1 — Domínio (2 val)

**Enunciado:** $f(x) = \dfrac{\sqrt{x+3}}{\ln(2-x)}$

**Tua resposta:**
- $2 - x \neq 0 \Rightarrow x \neq 2$
- (algo riscado sobre $x \neq 1$)

**Correção:**

> [!warning] Incompleto — 0.5/2 val
> Identificaste apenas parte das condições.

**Condições necessárias:**
1. **Raiz:** $x + 3 \geq 0 \Rightarrow x \geq -3$
2. **Argumento do ln:** $2 - x > 0 \Rightarrow x < 2$
3. **Denominador:** $\ln(2-x) \neq 0 \Rightarrow 2-x \neq 1 \Rightarrow x \neq 1$

**Domínio correto:** $D_f = [-3, 1[ \cup ]1, 2[$

> [!important] Lembrar
> - Logaritmo: argumento **estritamente positivo** (não basta $\neq 0$)
> - Raiz quadrada: argumento $\geq 0$
> - Denominador: $\neq 0$

---

## Questão 2a — Limite (1 val)

**Enunciado:** $\displaystyle \lim_{x \to 2} \frac{x^2 - 4}{x^2 - 5x + 6}$

**Tua resposta:**
$$\lim_{x \to 2} \frac{x^2 - 4}{x^2 - 5x + 6} = \frac{2x}{2x-5} = \frac{2(2)}{2(2)-5} = \frac{4}{-1} = -4$$

**Correção:**

> [!success] Correto — 1/1 val
> Usaste L'Hôpital corretamente e obtiveste o resultado certo.

**Método alternativo (factorização):**
$$\frac{x^2-4}{x^2-5x+6} = \frac{(x-2)(x+2)}{(x-2)(x-3)} = \frac{x+2}{x-3}$$
$$\lim_{x \to 2} \frac{x+2}{x-3} = \frac{4}{-1} = -4 \checkmark$$

---

## Questão 2b — Limite no infinito (1 val)

**Enunciado:** $\displaystyle \lim_{x \to +\infty} \frac{3x^2 - x + 1}{2x^2 + 5}$

**Tua resposta:** $\dfrac{3}{2}$

**Correção:**

> [!success] Correto — 1/1 val
> Resultado correto!

**Método:** Dividir por $x^2$ (maior grau):
$$\lim_{x \to +\infty} \frac{3 - \frac{1}{x} + \frac{1}{x^2}}{2 + \frac{5}{x^2}} = \frac{3-0+0}{2+0} = \frac{3}{2} \checkmark$$

---

## Questão 3 — Continuidade com k (2 val)

**Enunciado:** Determinar $k$ para que $f$ seja contínua em $x=3$

**Tua resposta:**
$$f(x) = \frac{x^2-9}{x-3} = \frac{(x-3)(x+3)}{x-3} = x+3$$
$$f(3) = 3+3 = 6 \Rightarrow k = 6$$

**Correção:**

> [!success] Correto — 2/2 val
> Factorizaste corretamente e aplicaste a condição de continuidade.

Para $f$ ser contínua em $x=3$:
$$\lim_{x \to 3} f(x) = f(3) = k$$
$$\lim_{x \to 3} (x+3) = 6 = k \checkmark$$

---

## Questão 4 — Teorema de Bolzano (2 val)

**Enunciado:** Mostrar que $f(x) = x^3 - 4x + 1$ tem zero em $[0, 2]$

**Tua resposta:**
- $f(0) = 0 - 0 + 1 = 1$
- $f(2) = 8 - 8 + 1 = 1$
- "não tem um zero entre $[0, 2]$"

**Correção:**

> [!warning] Parcialmente correto — 1.5/2 val
> Os teus cálculos estão corretos! O problema está no enunciado que escolhi mal.

Tens razão: $f(0) = 1 > 0$ e $f(2) = 1 > 0$, logo Bolzano não se aplica neste intervalo.

**Nota:** Para aplicar Bolzano corretamente, deveria usar $[0, 1]$:
- $f(0) = 1 > 0$
- $f(1) = 1 - 4 + 1 = -2 < 0$
- Sinais opostos → existe pelo menos um zero em $]0, 1[$

> [!tip] Bem feito!
> Não caíste na armadilha de "forçar" uma resposta. Verificaste os cálculos e concluíste corretamente.

---

## Questão 5 — Assíntotas (2 val)

**Enunciado:** $f(x) = \dfrac{2x^2 + 3x - 1}{x - 2}$

**Tua resposta:**
- Assíntota vertical: $x = 2$ ✓
- Sem assíntota oblíqua ✗
- Sem assíntota horizontal ✓

**Correção:**

> [!warning] Incompleto — 1/2 val
> A assíntota vertical está correta, mas **existe assíntota oblíqua**.

**Assíntota Vertical:** $x = 2$ ✓
- $\lim_{x \to 2^+} f(x) = +\infty$
- $\lim_{x \to 2^-} f(x) = -\infty$

**Assíntota Oblíqua:** (grau numerador = grau denominador + 1)

$$m = \lim_{x \to +\infty} \frac{f(x)}{x} = \lim_{x \to +\infty} \frac{2x^2+3x-1}{x(x-2)} = \lim_{x \to +\infty} \frac{2x^2+3x-1}{x^2-2x} = 2$$

$$b = \lim_{x \to +\infty} \left[f(x) - mx\right] = \lim_{x \to +\infty} \left[\frac{2x^2+3x-1}{x-2} - 2x\right]$$

$$= \lim_{x \to +\infty} \frac{2x^2+3x-1 - 2x(x-2)}{x-2} = \lim_{x \to +\infty} \frac{2x^2+3x-1-2x^2+4x}{x-2} = \lim_{x \to +\infty} \frac{7x-1}{x-2} = 7$$

**Assíntota oblíqua:** $y = 2x + 7$

**Assíntota Horizontal:** Não existe (grau num > grau den) ✓

---

## Questão 6 — Reta tangente e extremos (2 val)

**Tua resposta:** Não resolvido

**Correção:**

> [!error] Não respondido — 0/2 val

**a) Reta tangente em $x = 1$:**

$f(x) = x^3 - 3x^2 + 2$

$f'(x) = 3x^2 - 6x$

Ponto: $f(1) = 1 - 3 + 2 = 0$ → $(1, 0)$

Declive: $f'(1) = 3 - 6 = -3$

**Reta tangente:** $y - 0 = -3(x - 1) \Rightarrow y = -3x + 3$

**b) Extremos:**

$f'(x) = 0 \Rightarrow 3x^2 - 6x = 0 \Rightarrow 3x(x-2) = 0 \Rightarrow x = 0$ ou $x = 2$

$f''(x) = 6x - 6$

- $f''(0) = -6 < 0$ → **Máximo** em $x = 0$: $f(0) = 2$
- $f''(2) = 6 > 0$ → **Mínimo** em $x = 2$: $f(2) = 8 - 12 + 2 = -2$

**Máximo:** $(0, 2)$ | **Mínimo:** $(2, -2)$

---

## Questão 7a — Primitiva básica (1 val)

**Enunciado:** $\displaystyle \int (3x^4 - 2x^2 + 5) \, dx$

**Tua resposta:**
$$\frac{3x^5}{5} - \frac{2x^3}{3} + 5x + C, \quad C \in \mathbb{R}$$

**Correção:**

> [!success] Correto — 1/1 val
> Perfeito! Aplicaste corretamente a regra $\int x^n dx = \frac{x^{n+1}}{n+1} + C$

---

## Questão 7b — Primitiva com substituição (1 val)

**Enunciado:** $\displaystyle \int \frac{6x}{x^2 + 4} \, dx$

**Tua resposta:** Não resolvido

**Correção:**

> [!error] Não respondido — 0/1 val

**Método:** Substituição $u = x^2 + 4$, $du = 2x \, dx$

$$\int \frac{6x}{x^2+4} dx = 3 \int \frac{2x}{x^2+4} dx = 3 \ln|x^2+4| + C = 3\ln(x^2+4) + C$$

> [!tip] Reconhecer
> Quando vês $\frac{f'(x)}{f(x)}$, a primitiva é $\ln|f(x)| + C$

---

## Questão 8 — Integração por partes (2 val)

**Enunciado:** $\displaystyle \int x \cdot e^{2x} \, dx$

**Tua resposta:**
$$\int x \cdot e^{2x} dx = x \cdot e^{2x} - \int e^{2x} = x \cdot e^{2x} - \frac{e^{2x}}{2} + C$$

**Correção:**

> [!warning] Parcialmente correto — 1/2 val
> Aplicaste por partes, mas esqueceste o fator $\frac{1}{2}$ na primeira parte.

**Método correto:**
- $u = x \Rightarrow du = dx$
- $dv = e^{2x} dx \Rightarrow v = \frac{e^{2x}}{2}$

$$\int x \cdot e^{2x} dx = x \cdot \frac{e^{2x}}{2} - \int \frac{e^{2x}}{2} dx = \frac{x \cdot e^{2x}}{2} - \frac{e^{2x}}{4} + C$$

**Resposta correta:** $\dfrac{e^{2x}}{2}\left(x - \dfrac{1}{2}\right) + C = \dfrac{e^{2x}(2x-1)}{4} + C$

> [!important] Lembrar
> $\int e^{ax} dx = \frac{e^{ax}}{a} + C$ (dividir pelo coeficiente de $x$!)

---

## Questão 9 — Integral definido (2 val)

**Enunciado:** $\displaystyle \int_0^1 (3x^2 + 2x) \, dx$

**Tua resposta:**
$$\left[\frac{3x^3}{3} + \frac{2x^2}{2}\right]_0^1 = [x^3 + x^2]_0^1 = (1+1) - (0+0) = 2$$

**Correção:**

> [!success] Correto — 2/2 val
> Cálculo perfeito! Primitiva correta e aplicação do TFC correta.

---

## Questão 10 — Área entre curvas (2 val)

**Enunciado:** Área entre $f(x) = x^2$ e $g(x) = 2x$

**Tua resposta:** Não resolvido

**Correção:**

> [!error] Não respondido — 0/2 val

**Passo 1:** Encontrar interseções
$$x^2 = 2x \Rightarrow x^2 - 2x = 0 \Rightarrow x(x-2) = 0 \Rightarrow x = 0 \text{ ou } x = 2$$

**Passo 2:** Identificar qual função está "por cima"
- Em $x = 1$: $f(1) = 1$, $g(1) = 2$ → $g(x) > f(x)$ no intervalo

**Passo 3:** Calcular área
$$A = \int_0^2 [g(x) - f(x)] dx = \int_0^2 (2x - x^2) dx$$

$$= \left[x^2 - \frac{x^3}{3}\right]_0^2 = \left(4 - \frac{8}{3}\right) - 0 = \frac{12-8}{3} = \frac{4}{3}$$

**Área:** $\dfrac{4}{3}$ u.a.

---

## Resumo da Avaliação

| Questão | Tema | Cotação | Nota | Observação |
|:-------:|------|:-------:|:----:|------------|
| 1 | Domínio | 2 | 0.5 | Faltou condições da raiz e ln > 0 |
| 2a | Limite | 1 | 1 | Correto (L'Hôpital) |
| 2b | Limite ∞ | 1 | 1 | Correto |
| 3 | Continuidade k | 2 | 2 | Correto |
| 4 | Bolzano | 2 | 1.5 | Cálculos corretos (enunciado problemático) |
| 5 | Assíntotas | 2 | 1 | Faltou assíntota oblíqua |
| 6 | Derivadas | 2 | 0 | Não resolvido |
| 7a | Primitiva | 1 | 1 | Correto |
| 7b | Primitiva | 1 | 0 | Não resolvido |
| 8 | Por partes | 2 | 1 | Faltou fator 1/2 |
| 9 | Int. definido | 2 | 2 | Correto |
| 10 | Áreas | 2 | 0 | Não resolvido |

---

## Nota Final Estimada: 11/20

---

## Análise de Erros

> [!success] Pontos Fortes
> - Limites: bem dominados (indeterminações e infinito)
> - Continuidade com k: método correto e bem aplicado
> - Primitivas básicas: regra $x^n$ bem aplicada
> - Integral definido: TFC aplicado corretamente
> - Bolzano: não forçaste resposta errada!

> [!error] Pontos a Melhorar
> 1. **Domínios:** Lembrar TODAS as condições (raiz, ln, denominador)
> 2. **Assíntota oblíqua:** Não esquecer de calcular quando grau num = grau den + 1
> 3. **Integração por partes:** $\int e^{ax} dx = \frac{e^{ax}}{a}$ (dividir por $a$!)
> 4. **Áreas:** Praticar o método completo (interseções → superior-inferior → integrar)
> 5. **Reta tangente/Extremos:** Não deixar em branco!

> [!tip] Próximos Passos
> 1. Praticar 3 exercícios de domínios com logaritmos e raízes
> 2. Rever assíntotas oblíquas (m e b)
> 3. Fazer 5 exercícios de integração por partes com $e^{ax}$
> 4. Fazer 3 exercícios de áreas entre curvas
