---
tags:
  - AMI
---
 
# Guia — Reta Tangente e Extremos

## 1. Reta Tangente

### O que é?

A **reta tangente** ao gráfico de $f$ num ponto toca o gráfico nesse ponto e tem o mesmo "declive" que a curva.

### Fórmula

$$\boxed{y - y_0 = m(x - x_0)}$$

Onde:
- $(x_0, y_0)$ é o ponto de tangência
- $m = f'(x_0)$ é o **declive** (derivada no ponto)

### Algoritmo

```
1. PONTO: Calcular y₀ = f(x₀)
2. DECLIVE: Calcular m = f'(x₀)
3. EQUAÇÃO: y - y₀ = m(x - x₀)
4. SIMPLIFICAR: y = mx + (y₀ - mx₀)
```

### Exemplo

**Problema:** Reta tangente a $f(x) = x^3 - 6x^2 + 9x + 1$ em $x = 0$

**Passo 1 — Ponto:**
$$y_0 = f(0) = 0 - 0 + 0 + 1 = 1$$
Ponto: $(0, 1)$

**Passo 2 — Derivada:**
$$f'(x) = 3x^2 - 12x + 9$$

**Passo 3 — Declive:**
$$m = f'(0) = 0 - 0 + 9 = 9$$

**Passo 4 — Equação:**
$$y - 1 = 9(x - 0)$$
$$\boxed{y = 9x + 1}$$

---

## 2. Extremos (Máximos e Mínimos)

### O que são?

- **Máximo:** Ponto onde a função atinge o valor mais alto (local ou globalmente)
- **Mínimo:** Ponto onde a função atinge o valor mais baixo

### Ideia Principal

Nos extremos, a derivada é **zero** (a tangente é horizontal).

### Algoritmo

```
1. DERIVAR: Calcular f'(x)
2. ZEROS: Resolver f'(x) = 0 → pontos críticos
3. CLASSIFICAR: Usar f''(x) para saber se é máximo ou mínimo
4. CALCULAR: Obter f(x) nos pontos críticos
```

### Regra da Segunda Derivada

| $f''(x_c)$ | Tipo de extremo |
|------------|-----------------|
| $f''(x_c) < 0$ | **Máximo** (curva côncava para baixo ∩) |
| $f''(x_c) > 0$ | **Mínimo** (curva côncava para cima ∪) |
| $f''(x_c) = 0$ | Inconclusivo (usar outro método) |

### Exemplo

**Problema:** Extremos de $f(x) = x^3 - 6x^2 + 9x + 1$

**Passo 1 — Derivada:**
$$f'(x) = 3x^2 - 12x + 9$$

**Passo 2 — Zeros de f'(x):**
$$3x^2 - 12x + 9 = 0$$
$$x^2 - 4x + 3 = 0$$
$$(x - 1)(x - 3) = 0$$
$$x = 1 \quad \text{ou} \quad x = 3$$

**Passo 3 — Segunda derivada:**
$$f''(x) = 6x - 12$$

**Classificar:**
- $f''(1) = 6(1) - 12 = -6 < 0$ → **Máximo** em $x = 1$
- $f''(3) = 6(3) - 12 = 6 > 0$ → **Mínimo** em $x = 3$

**Passo 4 — Valores:**
- $f(1) = 1 - 6 + 9 + 1 = 5$ → **Máximo:** $(1, 5)$
- $f(3) = 27 - 54 + 27 + 1 = 1$ → **Mínimo:** $(3, 1)$

---

## 3. Resumo Visual

```
RETA TANGENTE em x₀:
1. y₀ = f(x₀)           ← valor da função
2. m = f'(x₀)           ← derivada no ponto
3. y = m(x - x₀) + y₀   ← equação da reta

EXTREMOS:
1. f'(x) = 0            ← encontrar pontos críticos
2. f''(xc) < 0 → Máximo
   f''(xc) > 0 → Mínimo
3. Calcular f(xc)       ← valor do extremo
```

---

## 4. Derivadas Comuns (para referência)

| $f(x)$ | $f'(x)$ |
|--------|---------|
| $x^n$ | $nx^{n-1}$ |
| $e^x$ | $e^x$ |
| $\ln(x)$ | $\frac{1}{x}$ |
| $\sin(x)$ | $\cos(x)$ |
| $\cos(x)$ | $-\sin(x)$ |

### Regras

- **Soma:** $(f + g)' = f' + g'$
- **Produto:** $(fg)' = f'g + fg'$
- **Quociente:** $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$
- **Cadeia:** $(f(g(x)))' = f'(g(x)) \cdot g'(x)$

---

## 5. Exercícios Práticos

**1.** Determine a reta tangente a $f(x) = x^2 - 4x + 3$ em $x = 2$.

> [!note]- Solução
> - $f(2) = 4 - 8 + 3 = -1$ → Ponto: $(2, -1)$
> - $f'(x) = 2x - 4$
> - $f'(2) = 0$ → Declive: $m = 0$
> - Reta: $y = -1$ (horizontal)

**2.** Determine a reta tangente a $f(x) = x^3$ em $x = 1$.

> [!note]- Solução
> - $f(1) = 1$ → Ponto: $(1, 1)$
> - $f'(x) = 3x^2$
> - $f'(1) = 3$ → Declive: $m = 3$
> - Reta: $y - 1 = 3(x - 1) \Rightarrow y = 3x - 2$

**3.** Determine os extremos de $f(x) = x^2 - 4x + 5$.

> [!note]- Solução
> - $f'(x) = 2x - 4 = 0 \Rightarrow x = 2$
> - $f''(x) = 2 > 0$ → **Mínimo**
> - $f(2) = 4 - 8 + 5 = 1$
> - **Mínimo:** $(2, 1)$

**4.** Determine os extremos de $f(x) = -x^2 + 6x - 5$.

> [!note]- Solução
> - $f'(x) = -2x + 6 = 0 \Rightarrow x = 3$
> - $f''(x) = -2 < 0$ → **Máximo**
> - $f(3) = -9 + 18 - 5 = 4$
> - **Máximo:** $(3, 4)$

**5.** Determine os extremos de $f(x) = x^3 - 3x$.

> [!note]- Solução
> - $f'(x) = 3x^2 - 3 = 0 \Rightarrow x^2 = 1 \Rightarrow x = \pm 1$
> - $f''(x) = 6x$
> - $f''(-1) = -6 < 0$ → **Máximo** em $x = -1$: $f(-1) = -1 + 3 = 2$
> - $f''(1) = 6 > 0$ → **Mínimo** em $x = 1$: $f(1) = 1 - 3 = -2$
> - **Máximo:** $(-1, 2)$, **Mínimo:** $(1, -2)$

---

## 6. Erros Comuns

> [!error] Esquecer de calcular o ponto
> Para a reta tangente, precisas do ponto $(x_0, y_0)$, não apenas do declive!

> [!error] Confundir máximo e mínimo
> - $f'' < 0$ → côncava para **baixo** → **Máximo** (∩)
> - $f'' > 0$ → côncava para **cima** → **Mínimo** (∪)

> [!error] Esquecer de resolver f'(x) = 0
> Os extremos estão onde a derivada é zero, não onde f(x) = 0!
