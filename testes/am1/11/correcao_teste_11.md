---
tags:
  - AMI
---

# Correção do Teste 11 — Análise Matemática I

> [!info] Informação
> **Data do teste:** 2026-02-14
> **Data da correção:** 2026-02-15
> **Nota estimada:** ~8-9/20
> **Questões respondidas:** 1-5, 7, 8, 10 (parcial)
> **Questões não respondidas:** 6, 9, 10b

---

## Resumo por Questão

| Questão | Tema | Resultado | Observação |
|---------|------|-----------|------------|
| 1a | Domínio ln | Parcial | Faltou $x < -2$ |
| 1b | Domínio raiz/fração | Parcial | Erro no domínio final |
| 2a | Limite indeterminação | Correto | |
| 2b | Limite infinito | Correto | |
| 2c | Limite lateral | Correto | |
| 3 | Continuidade k | Correto | |
| 4 | Bolzano | Correto | |
| 5 | Assíntotas | Correto | |
| 6 | Derivadas | Não feito | |
| 7a | Reta tangente | Erro | $f(1) = 6$, não 5 |
| 7b | Extremos | Parcial | Falta $x = 3$ |
| 7c | Inflexão | Incompleto | |
| 8a | Integral polinomial | Correto | |
| 8b | Integral f'/f | Erro | Falta fator 2 |
| 8c | Integral por partes | Erro | Falta dividir por 2 |
| 8d | Integral ln(x) | Erro | Confundiu com derivada |
| 9 | Primitiva c/ condição | Não feito | |
| 10a | Integral definido | Erro | Primitiva de $x^2$ errada |
| 10b | Integral definido | Não feito | |

---

## Correção Detalhada

### **1. Domínios**

#### a) $f(x) = \ln(x^2 - 4)$

**Tua resposta:**
$$x^2 - 4 > 0 \Rightarrow x^2 > 4 \Rightarrow x > 2$$
$$D_f = ]2, +\infty[$$

> [!warning] Erro
> Esqueceste que $x^2 > 4$ também implica $x < -2$.
> 
> A inequação $x^2 > 4$ tem **duas** regiões de solução:
> - $x > 2$ (números maiores que 2)
> - $x < -2$ (números menores que -2)

**Solução correta:**
$$x^2 - 4 > 0 \Leftrightarrow (x-2)(x+2) > 0$$
$$x < -2 \quad \text{ou} \quad x > 2$$
$$D_f = ]-\infty, -2[ \cup ]2, +\infty[$$

---

#### b) $g(x) = \dfrac{\sqrt{3-x}}{x^2 - 4x + 3}$

**Tua resposta:**
- Condição 1: $3 - x \geq 0 \Rightarrow x \leq 3$
- Condição 2: $x^2 - 4x + 3 = (x-1)(x-3) \neq 0 \Rightarrow x \neq 1$ e $x \neq 3$
- $D_g = ]-\infty, 1[ \cup ]1, 3[ \cup ]3, +\infty[$

> [!warning] Erro
> Escreveste $]3, +\infty[$ no domínio, mas a condição $x \leq 3$ exclui essa região.

**Solução correta:**
$$D_g = ]-\infty, 1[ \cup ]1, 3[$$

---

### **2. Limites**

#### a) $\displaystyle \lim_{x \to 2} \frac{x^2 - 4}{x^2 - 3x + 2}$

**Tua resposta:**
$$= \frac{(x-2)(x+2)}{(x-1)(x-2)} = \frac{x+2}{x-1} = \frac{4}{1} = 4$$

> [!success] Correto

---

#### b) $\displaystyle \lim_{x \to +\infty} \frac{4x^2 + 3x - 1}{2x^2 - x + 5}$

**Tua resposta:**
Dividiu por $x^2$:
$$= \frac{4 + \frac{3}{x} - \frac{1}{x^2}}{2 - \frac{1}{x} + \frac{5}{x^2}} = \frac{4 + 0 - 0}{2 - 0 + 0} = \frac{4}{2} = 2$$

> [!success] Correto

---

#### c) $\displaystyle \lim_{x \to 0^+} \frac{x^2 - 1}{x}$

**Tua resposta:**
$$= \frac{0^+ - 1}{0^+} = \frac{-1}{0^+} = -\infty$$

> [!success] Correto

---

### **3. Continuidade**

$$f(x) = \begin{cases} \dfrac{x^2 - x - 6}{x - 3} & \text{se } x \neq 3 \\ k & \text{se } x = 3 \end{cases}$$

**Tua resposta:**
$$\frac{x^2 - x - 6}{x - 3} = \frac{(x+2)(x-3)}{x-3} = x + 2$$
$$\lim_{x \to 3} (x + 2) = 5$$
$$k = 5$$

> [!success] Correto

---

### **4. Bolzano**

$h(x) = x^3 + 2x - 5$ no intervalo $]1, 2[$

**Tua resposta:**
- $h(1) = 1 + 2 - 5 = -2 < 0$
- $h(2) = 8 + 4 - 5 = 7 > 0$
- Como $h$ é contínua e muda de sinal, pelo Teorema de Bolzano existe pelo menos um zero em $]1, 2[$

> [!success] Correto

---

### **5. Assíntotas**

$$f(x) = \frac{3x^2 + 2x - 1}{x + 1}$$

**Tua resposta:**
- Assíntotas verticais: Não tem
- Assíntotas horizontais: Não tem
- Assíntotas oblíquas: $y = 3x - 1$

> [!success] Correto
> O numerador factoriza como $(3x-1)(x+1)$, simplificando para $f(x) = 3x - 1$ com descontinuidade removível em $x = -1$.

---

### **6. Derivadas** — NÃO RESPONDIDO

#### a) $f(x) = (2x^3 - 5x)^4$

**Solução:**
Regra da cadeia: $(u^n)' = n \cdot u^{n-1} \cdot u'$
$$f'(x) = 4(2x^3 - 5x)^3 \cdot (6x^2 - 5)$$

---

#### b) $g(x) = e^{x^2 + 1}$

**Solução:**
Regra da cadeia: $(e^u)' = e^u \cdot u'$
$$g'(x) = e^{x^2 + 1} \cdot 2x = 2x \cdot e^{x^2 + 1}$$

---

#### c) $h(x) = \ln(\cos(x))$

**Solução:**
Regra da cadeia: $(\ln u)' = \frac{u'}{u}$
$$h'(x) = \frac{-\sin(x)}{\cos(x)} = -\tan(x)$$

---

### **7. Reta tangente e extremos**

$f(x) = x^3 - 6x^2 + 9x + 2$

#### a) Reta tangente em $x = 1$

**Tua resposta:**
- $f(1) = 5$
- $f'(1) = 0$
- Reta: $y = 5$

> [!warning] Erro de cálculo
> $f(1) = 1^3 - 6(1)^2 + 9(1) + 2 = 1 - 6 + 9 + 2 = 6$, não 5.

**Solução correta:**
- $f(1) = 1 - 6 + 9 + 2 = 6$
- $f'(x) = 3x^2 - 12x + 9$
- $f'(1) = 3 - 12 + 9 = 0$
- Reta tangente: $y = 6$

---

#### b) Extremos

**Tua resposta:**
- $f'(x) = 3x^2 - 12x + 9 = 0$
- Identificou $x = 1$ como máximo ($f''(1) = -6 < 0$)

> [!warning] Incompleto
> Falta o outro extremo em $x = 3$.

**Solução completa:**
$$f'(x) = 3x^2 - 12x + 9 = 3(x^2 - 4x + 3) = 3(x-1)(x-3) = 0$$
$$x = 1 \quad \text{ou} \quad x = 3$$

$f''(x) = 6x - 12$:
- $f''(1) = 6 - 12 = -6 < 0$ → **Máximo** em $x = 1$
- $f''(3) = 18 - 12 = 6 > 0$ → **Mínimo** em $x = 3$

Valores:
- $f(1) = 6$ → Máximo: $(1, 6)$
- $f(3) = 27 - 54 + 27 + 2 = 2$ → Mínimo: $(3, 2)$

---

#### c) Pontos de inflexão

**Tua resposta:** Incompleto

**Solução:**
$$f''(x) = 6x - 12 = 0 \Rightarrow x = 2$$
$$f(2) = 8 - 24 + 18 + 2 = 4$$

**Ponto de inflexão:** $(2, 4)$

**Concavidade:**
- $x < 2$: $f''(x) < 0$ → côncava para baixo
- $x > 2$: $f''(x) > 0$ → côncava para cima

---

### **8. Integrais Indefinidos**

#### a) $\displaystyle \int (5x^4 - 3x^2 + 2) \, dx$

**Tua resposta:**
$$= \frac{5x^5}{5} - \frac{3x^3}{3} + 2x + C = x^5 - x^3 + 2x + C$$

> [!success] Correto

---

#### b) $\displaystyle \int \frac{4x}{x^2 + 3} \, dx$

**Tua resposta:**
$$= \ln(x^2 + 3) + C$$

> [!warning] Erro
> Falta o fator 2.

**Solução correta:**
Seja $u = x^2 + 3$, então $du = 2x \, dx$
$$\int \frac{4x}{x^2 + 3} dx = 2 \int \frac{2x}{x^2 + 3} dx = 2\ln(x^2 + 3) + C$$

---

#### c) $\displaystyle \int x \cdot e^{2x} \, dx$

**Tua resposta:**
$$= x \cdot e^{2x} - e^{2x} + C$$

> [!warning] Erro
> Não dividiste por 2 ao integrar $e^{2x}$.

**Solução correta (por partes):**
- $u = x$ → $du = dx$
- $dv = e^{2x} dx$ → $v = \frac{e^{2x}}{2}$

$$= \frac{x \cdot e^{2x}}{2} - \int \frac{e^{2x}}{2} dx = \frac{x \cdot e^{2x}}{2} - \frac{e^{2x}}{4} + C$$

---

#### d) $\displaystyle \int \ln(x) \, dx$

**Tua resposta:**
$$= \frac{1}{x} + C$$

> [!danger] Erro grave
> Confundiste com a **derivada** de $\ln(x)$.

**Solução correta (por partes):**
- $u = \ln(x)$ → $du = \frac{1}{x} dx$
- $dv = dx$ → $v = x$

$$= x\ln(x) - \int x \cdot \frac{1}{x} dx = x\ln(x) - \int 1 \, dx = x\ln(x) - x + C$$

---

### **9. Primitiva com condição** — NÃO RESPONDIDO

$f(x) = 3x^2 - 2x + 1$, $F(1) = 5$

**Solução:**
$$F(x) = \int (3x^2 - 2x + 1) dx = x^3 - x^2 + x + C$$
$$F(1) = 1 - 1 + 1 + C = 1 + C = 5 \Rightarrow C = 4$$
$$F(x) = x^3 - x^2 + x + 4$$

---

### **10. Integrais Definidos**

#### a) $\displaystyle \int_0^2 (x^2 + 1) \, dx$

**Tua resposta:**
$$= \left[\frac{x^2}{2} + x\right]_0^2 = \frac{4}{2} + 2 = 4$$

> [!danger] Erro grave
> A primitiva de $x^2$ é $\frac{x^3}{3}$, não $\frac{x^2}{2}$.

**Solução correta:**
$$= \left[\frac{x^3}{3} + x\right]_0^2 = \left(\frac{8}{3} + 2\right) - 0 = \frac{8}{3} + \frac{6}{3} = \frac{14}{3}$$

---

#### b) $\displaystyle \int_1^e \frac{1}{x} \, dx$ — NÃO COMPLETADO

**Solução:**
$$= [\ln|x|]_1^e = \ln(e) - \ln(1) = 1 - 0 = 1$$

---

## Análise de Erros

### Erros que voltaram (regressão)

| Erro | Teste anterior | Este teste |
|------|----------------|------------|
| Domínios $x^2 = k$ | Resolvido (teste 10) | Voltou (1a) |
| Primitiva de $x^n$ | OK | Errado (10a) |
| Derivar vs integrar | Resolvido | Voltou (8d) |

### Erros persistentes

| Erro | Frequência |
|------|------------|
| Extremos incompletos | Continua |
| Fator multiplicativo em f'/f | Continua |
| Por partes: dividir por coef. | Continua |

---

## Pontos a Trabalhar

> [!important] Prioridades
> 1. **Domínios com $x^2 = k$**: Lembrar que tem DUAS soluções ($\pm$)
> 2. **Primitivas básicas**: $\int x^n = \frac{x^{n+1}}{n+1}$ — revisar!
> 3. **Derivadas compostas**: Praticar regra da cadeia
> 4. **Integrais por partes**: Dividir pelo coeficiente de $e^{ax}$
> 5. **Padrão f'/f**: Verificar se precisa de fator multiplicativo

---

**Nota final estimada:** ~8-9/20
