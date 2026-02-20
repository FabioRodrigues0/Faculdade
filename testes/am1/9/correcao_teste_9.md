---
tags:
  - AMI
---

# Correção — Teste 9 de Análise Matemática I

> [!info] Resumo
> **Data:** 2026-02-14
> **Nota estimada:** ~12/20
> **Questões respondidas:** 8/10

---

## Resultados por Questão

| # | Tópico | Resultado | Comentário |
|---|--------|:---------:|------------|
| 1 | Domínio | ❌ | Esqueceu $x = -2$ |
| 2a | Limite | ✅ | Perfeito |
| 2b | Limite no infinito | ❌ | Método errado |
| 3 | Continuidade com k | ✅ | Perfeito |
| 4 | Bolzano | ✅ | Perfeito |
| 5 | Assíntotas | ⚠️ | Não há AV (descontinuidade removível), AO incompleta |
| 6a | Reta tangente | ❌ | Calculou em $x=0$ em vez de $x=1$, derivada errada |
| 6b | Extremos | ❌ | Não respondeu |
| 7a | Primitiva básica | ✅ | Perfeito |
| 7b | Primitiva f'/f | ❌ | Fator 2 a mais |
| 7c | Por partes | ✅ | Perfeito |
| 8 | Integral definido | ✅ | Perfeito (TFC correto!) |
| 9 | Áreas | — | Não respondeu |
| 10 | Trigonometria | — | Não respondeu |

---

## Correção Detalhada

### Questão 1 — Domínio ❌

**Tua resposta:**
$$x^2 - 4 \neq 0 \Rightarrow x^2 \neq 4 \Rightarrow x \neq 2$$
$$3 - x \geq 0 \Rightarrow x \leq 3$$
$$D_f = ]2, 3]$$

**Erro:** $x^2 = 4$ tem DUAS soluções: $x = 2$ e $x = -2$

**Correção:**
1. Radicando: $3 - x \geq 0 \Rightarrow x \leq 3$
2. Denominador: $x^2 - 4 \neq 0 \Rightarrow x \neq \pm 2$

$$D_f = ]-\infty, -2[ \cup ]-2, 2[ \cup ]2, 3]$$

> [!warning] Lembra-te
> $x^2 = k \Rightarrow x = \pm\sqrt{k}$ (duas soluções!)

---

### Questão 2a — Limite ✅

**Tua resposta:** $-4$

**Verificação (L'Hôpital):**
$$\lim_{x \to 2} \frac{x^2 - 4}{x^2 - 5x + 6} \stackrel{\frac{0}{0}}{=} \lim_{x \to 2} \frac{2x}{2x - 5} = \frac{4}{-1} = -4 \checkmark$$

Perfeito!

---

### Questão 2b — Limite no infinito ❌

**Tua resposta:** Cálculos confusos, chegaste a algo como $+\infty$ ou $8$

**Correção:** Dividir numerador e denominador por $x^2$ (maior potência):

$$\lim_{x \to +\infty} \frac{3x^2 - x + 1}{2x^2 + 5} = \lim_{x \to +\infty} \frac{3 - \frac{1}{x} + \frac{1}{x^2}}{2 + \frac{5}{x^2}} = \frac{3 - 0 + 0}{2 + 0} = \frac{3}{2}$$

> [!important] Regra rápida para limites no infinito
> - Grau num = Grau den → $\frac{\text{coef. líder num}}{\text{coef. líder den}}$
> - Aqui: $\frac{3}{2}$

---

### Questão 3 — Continuidade com k ✅

**Tua resposta:** $k = 6$

**Verificação:**
$$\lim_{x \to 3} \frac{x^2 - 9}{x - 3} = \lim_{x \to 3} \frac{(x-3)(x+3)}{x-3} = \lim_{x \to 3} (x + 3) = 6$$

Para continuidade: $k = 6$ ✓

Perfeito!

---

### Questão 4 — Bolzano ✅

**Tua resposta:**
- $f(2) = 8 - 4 - 5 = -1 < 0$
- $f(3) = 27 - 6 - 5 = 16 > 0$

**Conclusão:** Como $f$ é contínua em $[2,3]$ e $f(2) \cdot f(3) < 0$, pelo Teorema de Bolzano existe pelo menos um zero em $]2, 3[$.

Perfeito!

---

### Questão 5 — Assíntotas ⚠️

**Tua resposta:** Identificaste $x = 1$ como possível AV

**Problema:** Não há assíntota vertical!

$$f(x) = \frac{x^2 + 2x - 3}{x - 1} = \frac{(x+3)(x-1)}{x-1} = x + 3 \quad (x \neq 1)$$

O numerador anula-se quando $x = 1$, logo é uma **descontinuidade removível**, não uma AV.

**Correção completa:**
- **AV:** Nenhuma (descontinuidade removível em $x = 1$)
- **AH:** Nenhuma (grau num > grau den)
- **AO:** Como $f(x) = x + 3$ para $x \neq 1$, a assíntota oblíqua é $y = x + 3$

> [!tip] Antes de declarar AV
> Verifica se o numerador também se anula no mesmo ponto. Se sim, factoriza primeiro!

---

### Questão 6a — Reta tangente ❌

**Tua resposta:** Calculaste em $x = 0$ e obtiveste $y = 9x + 2$

**Erros:**
1. O enunciado pedia em $x = 1$, não em $x = 0$
2. A derivada está errada: escreveste $f'(x) = 3x^2 - 6x + 9$ mas é $f'(x) = 3x^2 - 12x + 9$

**Correção:**

$f(x) = x^3 - 6x^2 + 9x + 2$

**Passo 1 — Ponto:**
$$f(1) = 1 - 6 + 9 + 2 = 6 \quad \Rightarrow \quad P(1, 6)$$

**Passo 2 — Declive:**
$$f'(x) = 3x^2 - 12x + 9$$
$$f'(1) = 3 - 12 + 9 = 0$$

**Passo 3 — Equação:**
$$y - 6 = 0(x - 1)$$
$$\boxed{y = 6}$$

(Reta horizontal!)

---

### Questão 6b — Extremos ❌

**Não respondeste.**

**Resolução:**

**Passo 1 — Pontos críticos:**
$$f'(x) = 3x^2 - 12x + 9 = 0$$
$$3(x^2 - 4x + 3) = 0$$
$$(x - 1)(x - 3) = 0$$
$$x = 1 \quad \text{ou} \quad x = 3$$

**Passo 2 — Classificar (2ª derivada):**
$$f''(x) = 6x - 12$$
- $f''(1) = 6 - 12 = -6 < 0$ → **Máximo**
- $f''(3) = 18 - 12 = 6 > 0$ → **Mínimo**

**Passo 3 — Valores:**
- $f(1) = 1 - 6 + 9 + 2 = 6$ → **Máximo relativo em $(1, 6)$**
- $f(3) = 27 - 54 + 27 + 2 = 2$ → **Mínimo relativo em $(3, 2)$**

---

### Questão 7a — Primitiva básica ✅

**Tua resposta:** $x^3 - 2x^2 + x + C$

$$\int (3x^2 - 4x + 1)\,dx = \frac{3x^3}{3} - \frac{4x^2}{2} + x + C = x^3 - 2x^2 + x + C \checkmark$$

Perfeito!

---

### Questão 7b — Primitiva f'/f ❌

**Tua resposta:** $2\ln(x^2 + 4) + C$

**Erro:** O fator 2 está a mais!

**Correção:**
Seja $u = x^2 + 4$, então $du = 2x\,dx$

$$\int \frac{2x}{x^2 + 4}\,dx = \int \frac{du}{u} = \ln|u| + C = \boxed{\ln(x^2 + 4) + C}$$

O $2x$ já é a derivada de $x^2 + 4$, não precisas de multiplicar por 2 novamente.

> [!important] Padrão f'/f
> $$\int \frac{f'(x)}{f(x)}\,dx = \ln|f(x)| + C$$
> O numerador já TEM de ser a derivada do denominador!

---

### Questão 7c — Por partes ✅

**Tua resposta:** $x \cdot e^x - e^x + C$

**Verificação:**
- $u = x \Rightarrow du = dx$
- $dv = e^x\,dx \Rightarrow v = e^x$

$$\int x \cdot e^x\,dx = x \cdot e^x - \int e^x\,dx = x \cdot e^x - e^x + C = e^x(x - 1) + C \checkmark$$

Perfeito!

---

### Questão 8 — Integral definido ✅

**Tua resposta:** $\frac{14}{3}$

**Verificação:**
$$\int_0^2 (x^2 + 1)\,dx = \left[\frac{x^3}{3} + x\right]_0^2 = \left(\frac{8}{3} + 2\right) - \left(0 + 0\right) = \frac{8}{3} + \frac{6}{3} = \frac{14}{3} \checkmark$$

Perfeito! **TFC aplicado corretamente** (F(b) - F(a))!

---

### Questão 9 — Áreas (não respondida)

**Resolução:**

$f(x) = x^2$ e $y = 4$

**Passo 1 — Interseções:**
$$x^2 = 4 \Rightarrow x = \pm 2$$

**Passo 2 — Qual está por cima?**
Em $x = 0$: $f(0) = 0$ e $y = 4$ → a reta está por cima

**Passo 3 — Calcular:**
$$A = \int_{-2}^{2} (4 - x^2)\,dx = \left[4x - \frac{x^3}{3}\right]_{-2}^{2}$$

$$= \left(8 - \frac{8}{3}\right) - \left(-8 + \frac{8}{3}\right) = 8 - \frac{8}{3} + 8 - \frac{8}{3} = 16 - \frac{16}{3} = \frac{32}{3}$$

---

### Questão 10 — Trigonometria (não respondida)

**Resolução:**

$$\cos(x) = \frac{1}{2}, \quad x \in [0, 2\pi[$$

$\cos(x) = \frac{1}{2}$ corresponde ao ângulo $\frac{\pi}{3}$ (60°)

Como cosseno é positivo no 1º e 4º quadrantes:
- 1º quadrante: $x = \frac{\pi}{3}$
- 4º quadrante: $x = 2\pi - \frac{\pi}{3} = \frac{5\pi}{3}$

$$\boxed{x = \frac{\pi}{3} \quad \text{ou} \quad x = \frac{5\pi}{3}}$$

---

## Análise de Erros

### Resolvidos ✅
| Tópico | Antes | Agora |
|--------|-------|-------|
| TFC (integral definido) | Somava F(a)+F(b) | **F(b)-F(a) correto!** |
| Bolzano | OK | OK |
| Continuidade com k | OK | OK |
| Por partes | OK | OK |

### Persistentes ⚠️
| Erro | Ocorrência |
|------|------------|
| Derivadas (reta tangente/extremos) | Calculou em ponto errado, derivada mal feita |
| Domínios | Esqueceu solução negativa de $x^2 = 4$ |
| Padrão f'/f | Multiplicou por fator extra |

### Novo ⚠️
| Erro | Descrição |
|------|-----------|
| AV vs Descontinuidade removível | Não verificou se numerador também anula |

---

## Próximos Passos

> [!todo] Prioridades de estudo
> 1. **Derivadas e aplicações** — Reta tangente, extremos (método completo)
> 2. **Domínios** — Lembrar que $x^2 = k \Rightarrow x = \pm\sqrt{k}$
> 3. **Padrão f'/f** — Se o numerador JÁ É a derivada, não multiplicar por mais nada
> 4. **Assíntotas** — Verificar se numerador anula antes de declarar AV

---

**Progresso geral:** Bom teste! O TFC está dominado, por partes perfeito. Falta consolidar derivadas e suas aplicações.
