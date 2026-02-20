# Correção — Teste AMI 16

> [!info] Informação
> **Data:** 18 de fevereiro de 2026
> **Nota estimada:** ~14-15/20

---

## Resumo por Questão

| Q | Tema | Resultado | Nota |
|---|------|-----------|------|
| 1a | Domínio (ln + raiz) | ✅ Correto | 1/1 |
| 1b | Domínio (raiz quadrática) | ⚠️ Incompleto | 0.5/1 |
| 2a | Limite factorização | ✅ Correto | 1/1 |
| 2b | Limite trigonométrico | ✅ Correto | 1/1 |
| 2c | Limite trig/trig | ✅ Correto | 1/1 |
| 3 | Continuidade k | ✅ Correto | 1/1 |
| 4 | Bolzano | ✅ Correto | 1/1 |
| 5 | Assíntotas (AV + AH) | ✅ Correto | 1/1 |
| 6a | Derivada ln composta | ✅ Correto | 1/1 |
| 6b | Derivada raiz composta | ✅ Correto | 1/1 |
| 6c | Derivada exp composta | ✅ Correto | 1/1 |
| 6d | Derivada quociente | ⚠️ Pequeno erro | 0.5/1 |
| 7 | Reta tangente | ⚠️ Erro no ponto | 0.5/1.5 |
| 8a | Integral polinomial | ✅ Correto | 1/1 |
| 8b | Integral f'/f | ✅ Correto | 1/1 |
| 8c | Por partes (x²eˣ) | ⚠️ Incompleto | 0.5/1 |
| 8d | Por partes (x·ln) | ❌ Errado | 0/1 |
| 9a | Integral definido | ⚠️ Erro cálculo | 0.5/1 |
| 9b | Integral definido e²ˣ | ✅ Correto | 1/1 |
| 10 | Primitiva com condição | ✅ Correto | 1/1 |
| 11 | Área | ✅ Correto | 1.5/1.5 |

**Total estimado: ~14-15/20**

---

## Correção Detalhada

### 1. Domínios

**1a)** $f(x) = \dfrac{\ln(x-1)}{\sqrt{4-x}}$

> [!success] CORRETO
> - $\ln(x-1)$: precisa $x - 1 > 0 \Rightarrow x > 1$
> - $\sqrt{4-x}$ no denominador: precisa $4 - x > 0 \Rightarrow x < 4$
> - **Resposta:** $D_f = ]1, 4[$ ✅

**1b)** $g(x) = \sqrt{x^2 - 16}$

> [!warning] INCOMPLETO — Falta parte negativa
> **O que escreveste:** $D_g = ]4, +\infty[$ ⚠️
> 
> **Problema:** Esqueceste que $x^2 \geq 16$ também inclui $x \leq -4$!

**Resolução correta:**
$$x^2 - 16 \geq 0 \Rightarrow x^2 \geq 16 \Rightarrow |x| \geq 4$$
$$\Rightarrow x \leq -4 \text{ ou } x \geq 4$$

**Resposta:** $D_g = ]-\infty, -4] \cup [4, +\infty[$

> [!tip] Lembra-te!
> $x^2 \geq k$ tem **DUAS** regiões: $x \leq -\sqrt{k}$ ou $x \geq \sqrt{k}$

---

### 2. Limites ✅

**2a)** $\displaystyle\lim_{x \to 3} \dfrac{x^2 - 9}{x^2 - 5x + 6}$

> [!success] CORRETO
> $$= \lim_{x \to 3} \frac{(x-3)(x+3)}{(x-3)(x-2)} = \lim_{x \to 3} \frac{x+3}{x-2} = \frac{6}{1} = 6$$ ✅

**2b)** $\displaystyle\lim_{x \to 0} \dfrac{\sin(5x)}{2x}$

> [!success] CORRETO — EXCELENTE! Corrigiste o erro do teste 15!
> $$= \lim_{x \to 0} \frac{\sin(5x)}{5x} \cdot \frac{5}{2} = 1 \cdot \frac{5}{2} = \frac{5}{2}$$ ✅

**2c)** $\displaystyle\lim_{x \to 0} \dfrac{\sin(4x)}{\sin(2x)}$

> [!success] CORRETO
> $$= \lim_{x \to 0} \frac{\sin(4x)}{4x} \cdot \frac{4x}{2x} \cdot \frac{2x}{\sin(2x)} = 1 \cdot 2 \cdot 1 = 2$$ ✅

---

### 3. Continuidade k ✅

> [!success] CORRETO
> $$\lim_{x \to 1} \frac{x^2 - 1}{x - 1} = \lim_{x \to 1} \frac{(x-1)(x+1)}{x-1} = \lim_{x \to 1} (x+1) = 2$$
> 
> **Resposta:** $k = 2$ ✅

---

### 4. Bolzano ✅

> [!success] CORRETO
> - $g(0) = 0 - 0 + 0 - 1 = -1 < 0$
> - $g(1) = 1 - 6 + 9 - 1 = 3 > 0$
> - Como $g$ é contínua e $g(0) \cdot g(1) < 0$, pelo Teorema de Bolzano existe pelo menos um zero em $]0, 1[$ ✅

---

### 5. Assíntotas ✅

> [!success] CORRETO — CORRIGISTE o erro do teste 15!
> 
> **AV:** $x + 4 = 0 \Rightarrow x = -4$ ✅
> 
> **AH:** $\lim_{x \to \pm\infty} \frac{3x-2}{x+4} = \lim_{x \to \pm\infty} \frac{3 - \frac{2}{x}}{1 + \frac{4}{x}} = 3$ ✅
> 
> **Resposta:** AV: $x = -4$, AH: $y = 3$ ✅

---

### 6. Derivadas

**6a)** $f(x) = \ln(x^2 + 3x)$

> [!success] CORRETO — EXCELENTE! Corrigiste o erro do teste 15!
> $$f'(x) = \frac{(x^2 + 3x)'}{x^2 + 3x} = \frac{2x + 3}{x^2 + 3x}$$ ✅

**6b)** $g(x) = \sqrt{2x^3 - 5}$

> [!success] CORRETO — Regra da cadeia perfeita!
> $$g'(x) = \frac{(2x^3 - 5)'}{2\sqrt{2x^3 - 5}} = \frac{6x^2}{2\sqrt{2x^3 - 5}} = \frac{3x^2}{\sqrt{2x^3 - 5}}$$ ✅

**6c)** $h(x) = e^{4x - x^2}$

> [!success] CORRETO
> $$h'(x) = e^{4x - x^2} \cdot (4 - 2x)$$ ✅

**6d)** $p(x) = \dfrac{x^3 - 1}{x + 2}$

> [!warning] PEQUENO ERRO na simplificação
> **O que escreveste:** $\frac{2x^3 + 6x^2 - 1}{(x+2)^2}$
> 
> Vamos verificar:
> $$p'(x) = \frac{3x^2(x+2) - (x^3-1) \cdot 1}{(x+2)^2} = \frac{3x^3 + 6x^2 - x^3 + 1}{(x+2)^2} = \frac{2x^3 + 6x^2 + 1}{(x+2)^2}$$
> 
> Escreveste $-1$ mas é $+1$. Erro de sinal pequeno.

---

### 7. Reta Tangente ⚠️

> [!warning] ERRO no valor do ponto
> **O que escreveste:** $f(2) = 4 - 8 - 3 = -7$ ❌
> 
> **Problema:** A função é $f(x) = x^2 - 4x + 3$, então:
> $$f(2) = 4 - 8 + 3 = -1$$ (não $-3$!)

**Derivada correta:**
$$f'(x) = 2x - 4$$
$$f'(2) = 4 - 4 = 0$$ ✅

**Reta tangente:**
- Ponto: $(2, -1)$
- Declive: $0$
- Reta: $y = -1$ (reta horizontal)

**Resposta:** $y = -1$

---

### 8. Integrais Indefinidos

**8a)** $\displaystyle\int (6x^2 - 4x + 3) \, dx$

> [!success] CORRETO
> $$= 2x^3 - 2x^2 + 3x + C$$ ✅

**8b)** $\displaystyle\int \dfrac{3x^2 + 3}{x^3 + 3x} \, dx$

> [!success] CORRETO — Padrão f'/f perfeito!
> $(x^3 + 3x)' = 3x^2 + 3$ ← já está no numerador!
> $$= \ln|x^3 + 3x| + C$$ ✅

**8c)** $\displaystyle\int x^2 \cdot e^x \, dx$

> [!warning] INCOMPLETO — Falta uma aplicação de por partes
> **O que escreveste:** $x^2 \cdot e^x - 2x \cdot e^x + C$
> 
> **Problema:** Quando aplicas por partes a $\int 2x \cdot e^x dx$, precisas de outra ronda!

**Resolução completa:**
1ª aplicação: $u = x^2$, $dv = e^x dx$
$$\int x^2 e^x dx = x^2 e^x - \int 2x e^x dx$$

2ª aplicação: $u = 2x$, $dv = e^x dx$
$$\int 2x e^x dx = 2x e^x - \int 2 e^x dx = 2x e^x - 2e^x$$

**Resultado:**
$$\int x^2 e^x dx = x^2 e^x - 2x e^x + 2e^x + C = e^x(x^2 - 2x + 2) + C$$

**8d)** $\displaystyle\int x \cdot \ln(x) \, dx$

> [!danger] ERRADO — Confundiste o método
> **O que escreveste:** $x \cdot \frac{1}{x} - \frac{x}{x} + C$ ❌
> 
> **Problema:** Derivaste o $\ln(x)$ mas não integraste o $x$ corretamente.

**Resolução correta:**
Por partes: $u = \ln(x)$, $dv = x \, dx$
- $du = \frac{1}{x} dx$
- $v = \frac{x^2}{2}$

$$\int x \ln(x) dx = \frac{x^2}{2} \ln(x) - \int \frac{x^2}{2} \cdot \frac{1}{x} dx$$
$$= \frac{x^2}{2} \ln(x) - \frac{1}{2} \int x \, dx$$
$$= \frac{x^2}{2} \ln(x) - \frac{x^2}{4} + C$$

**Resposta:** $\dfrac{x^2}{2} \ln(x) - \dfrac{x^2}{4} + C$

---

### 9. Integrais Definidos

**9a)** $\displaystyle\int_1^3 (2x - 1) \, dx$

> [!warning] ERRO de cálculo
> $$= \left[x^2 - x\right]_1^3 = (9 - 3) - (1 - 1) = 6 - 0 = 6$$
> 
> Escreveste 5, mas é **6**.

**9b)** $\displaystyle\int_0^1 e^{2x} \, dx$

> [!success] CORRETO
> $$= \left[\frac{e^{2x}}{2}\right]_0^1 = \frac{e^2}{2} - \frac{e^0}{2} = \frac{e^2 - 1}{2}$$ ✅

---

### 10. Primitiva com Condição ✅

> [!success] CORRETO
> $$F(x) = x^4 + x^2 + C$$
> $$F(1) = 1 + 1 + C = 5 \Rightarrow C = 3$$
> 
> **Resposta:** $F(x) = x^4 + x^2 + 3$ ✅

---

### 11. Área ✅

> [!success] CORRETO — EXCELENTE! Corrigiste o erro do teste 15!
> 
> Em $x = 1$: $y = x^2 = 1$, $y = 2x = 2$
> Como $2 > 1$, a reta $y = 2x$ está **por cima** da parábola.
> 
> $$A = \int_0^2 (2x - x^2) dx = \left[x^2 - \frac{x^3}{3}\right]_0^2$$
> $$= 4 - \frac{8}{3} = \frac{12 - 8}{3} = \frac{4}{3}$$ ✅

---

## Resumo dos Erros

### ✅ CORRIGIDOS (do teste 15!)
1. **Limites trigonométricos** — $\frac{\sin(5x)}{2x} = \frac{5}{2}$ PERFEITO!
2. **Derivada $\ln(f(x))$** — regra da cadeia aplicada corretamente!
3. **Derivada $\sqrt{f(x)}$** — regra da cadeia aplicada corretamente!
4. **Assíntota horizontal** — lembras-te de calcular!
5. **Área** — verificaste qual curva estava por cima!

### ⚠️ Erros neste teste
1. **Domínio 1b** — esqueceste $x \leq -4$ (erro recorrente com $x^2 \geq k$)
2. **Reta tangente** — erro aritmético ($+3$, não $-3$)
3. **Por partes $x^2 e^x$** — falta segunda aplicação
4. **Por partes $x \ln(x)$** — confundiste as primitivas
5. **Integral definido 9a** — erro de cálculo (é 6, não 5)

### ✅ Dominado
- Limites (todos os tipos!)
- Continuidade k
- Bolzano
- Assíntotas (AV + AH)
- Derivadas compostas (ln, raiz, exp) — RESOLVIDO!
- Padrão f'/f
- Áreas — RESOLVIDO!
- Primitiva com condição

---

## Próximos Passos

> [!success] Grande progresso!
> Corrigiste TODOS os erros críticos do teste 15:
> - Limites trigonométricos ✅
> - Derivadas compostas ✅
> - Áreas ✅
> - Assíntotas horizontais ✅

> [!warning] Para praticar
> 1. **Por partes com $x^2$** — precisa de DUAS aplicações
> 2. **Por partes $x \cdot \ln(x)$** — $v = \frac{x^2}{2}$, não $x$
> 3. **Domínios $x^2 \geq k$** — lembrar das duas regiões ($x \leq -\sqrt{k}$ ou $x \geq \sqrt{k}$)

---

**Nota final estimada:** ~14-15/20

EXCELENTE PROGRESSO! Este é o teu melhor teste desde o 13!
