# Correção — Teste AMI 15

> [!info] Informação
> **Data:** 18 de fevereiro de 2026
> **Nota estimada:** ~12-13/20

---

## Resumo por Questão

| Q | Tema | Resultado | Nota |
|---|------|-----------|------|
| 1a | Domínio (radical) | ✅ Correto | 1/1 |
| 1b | Domínio (ln) | ✅ Correto | 1/1 |
| 2a | Limite factorização | ✅ Correto | 1/1 |
| 2b | Limite infinito | ✅ Correto | 1/1 |
| 2c | Limite trigonométrico | ❌ Errado | 0/1 |
| 3 | Continuidade k | ✅ Correto | 1/1 |
| 4 | Bolzano | ✅ Correto | 1/1 |
| 5 | Assíntotas | ⚠️ Incompleto | 0.5/1 |
| 6a | Derivada polinomial | ❌ Erro de sinal | 0/1 |
| 6b | Derivada quociente | ⚠️ Incompleto | 0.5/1 |
| 6c | Derivada ln composta | ❌ Falta cadeia | 0/1 |
| 6d | Derivada exp composta | ✅ Correto | 1/1 |
| 7 | Reta tangente | ✅ Correto | 1.5/1.5 |
| 8a | Integral polinomial | ✅ Correto | 1/1 |
| 8b | Integral f'/f | ✅ Correto | 1/1 |
| 8c | Por partes (xe^x) | ✅ Correto | 1/1 |
| 8d | Por partes (ln) | ✅ Correto | 1/1 |
| 9a | Integral definido | ✅ Correto | 1/1 |
| 9b | Integral definido | ✅ Correto | 1/1 |
| 10 | Primitiva com condição | ❌ Erro aritmético | 0/1 |
| 11 | Área | ❌ Erro de cálculo | 0/1.5 |

**Total estimado: ~12-13/20**

---

## Correção Detalhada

### 1. Domínios ✅

**1a)** $f(x) = \dfrac{x + 1}{\sqrt{x^2 - 9}}$

> [!success] CORRETO
> - Condição: $x^2 - 9 > 0$ (raiz no denominador, tem de ser $> 0$)
> - $x^2 > 9 \Rightarrow |x| > 3 \Rightarrow x < -3$ ou $x > 3$
> - **Resposta:** $D_f = ]-\infty, -3[ \cup ]3, +\infty[$ ✅

**1b)** $g(x) = \ln(4 - x^2)$

> [!success] CORRETO
> - Condição: $4 - x^2 > 0$
> - $x^2 < 4 \Rightarrow |x| < 2 \Rightarrow -2 < x < 2$
> - **Resposta:** $D_g = ]-2, 2[$ ✅

---

### 2. Limites

**2a)** $\displaystyle\lim_{x \to 2} \dfrac{x^2 - 4}{x^2 - 3x + 2}$

> [!success] CORRETO
> $$= \lim_{x \to 2} \frac{(x-2)(x+2)}{(x-2)(x-1)} = \lim_{x \to 2} \frac{x+2}{x-1} = \frac{4}{1} = 4$$ ✅

**2b)** $\displaystyle\lim_{x \to +\infty} \dfrac{2x^3 - x + 5}{4x^3 + 3x^2}$

> [!success] CORRETO
> Dividir por $x^3$:
> $$= \lim_{x \to +\infty} \frac{2 - \frac{1}{x^2} + \frac{5}{x^3}}{4 + \frac{3}{x}} = \frac{2}{4} = \frac{1}{2}$$ ✅

**2c)** $\displaystyle\lim_{x \to 0} \dfrac{\sin(3x)}{x}$

> [!danger] ERRADO — Método incorreto
> **O que escreveste:** $\frac{\sin(3x)}{x} = \cos(3x) = \cos(0) = 1$ ❌
> 
> **Problema:** Aplicaste uma "derivada" de forma incorreta. Este limite resolve-se usando o limite notável!

**Resolução correta:**
$$\lim_{x \to 0} \frac{\sin(3x)}{x}$$

Usar o limite notável $\lim_{u \to 0} \frac{\sin(u)}{u} = 1$

Multiplicar e dividir por 3:
$$= \lim_{x \to 0} \frac{\sin(3x)}{x} \cdot \frac{3}{3} = \lim_{x \to 0} \frac{\sin(3x)}{3x} \cdot 3 = 1 \cdot 3 = \boxed{3}$$

> [!tip] Regra geral
> $$\lim_{x \to 0} \frac{\sin(ax)}{x} = a$$
> $$\lim_{x \to 0} \frac{\sin(ax)}{bx} = \frac{a}{b}$$

---

### 3. Continuidade com k ✅

> [!success] CORRETO
> $$\lim_{x \to 2} \frac{x^2 - 4}{x - 2} = \lim_{x \to 2} \frac{(x-2)(x+2)}{x-2} = \lim_{x \to 2} (x+2) = 4$$
> 
> Para continuidade: $k = 4$ ✅

---

### 4. Bolzano ✅

> [!success] CORRETO
> - $h(0) = 0 - 0 + 1 = 1 > 0$
> - $h(1) = 1 - 3 + 1 = -1 < 0$
> - Como $h$ é contínua e $h(0) \cdot h(1) < 0$, pelo Teorema de Bolzano existe pelo menos um zero em $]0, 1[$ ✅

---

### 5. Assíntotas ⚠️ INCOMPLETO

**Assíntota Vertical:**

> [!success] Parte correta
> - Denominador: $x - 3 = 0 \Rightarrow x = 3$
> - $\lim_{x \to 3^+} \frac{2x+1}{x-3} = \frac{7}{0^+} = +\infty$
> - **AV:** $x = 3$ ✅

**Assíntota Horizontal:**

> [!warning] FALTA!
> Não calculaste a assíntota horizontal.

$$\lim_{x \to +\infty} \frac{2x+1}{x-3} = \lim_{x \to +\infty} \frac{2 + \frac{1}{x}}{1 - \frac{3}{x}} = \frac{2}{1} = 2$$

$$\lim_{x \to -\infty} \frac{2x+1}{x-3} = 2$$

**AH:** $y = 2$

**Resposta completa:**
- AV: $x = 3$
- AH: $y = 2$

---

### 6. Derivadas

**6a)** $f(x) = x^4 - 3x^2 + 5x - 7$

> [!danger] ERRADO — Erro de sinal
> **O que escreveste:** $f'(x) = 4x^3 + 6x + 5$ ❌
> 
> **Correto:** $f'(x) = 4x^3 - 6x + 5$ ✅
> 
> A derivada de $-3x^2$ é $-6x$, não $+6x$!

**6b)** $g(x) = \dfrac{x^2 + 1}{x - 2}$

> [!warning] INCOMPLETO
> **O que escreveste:** $g'(x) = \frac{2x(x-2) - (x^2+1)}{(x-2)^2}$
> 
> Está correto até aqui, mas falta simplificar!

**Simplificação:**
$$g'(x) = \frac{2x^2 - 4x - x^2 - 1}{(x-2)^2} = \frac{x^2 - 4x - 1}{(x-2)^2}$$

**6c)** $h(x) = \ln(x^3 + 2x)$

> [!danger] ERRADO — Falta regra da cadeia!
> **O que escreveste:** $h'(x) = \frac{1}{x^3 + 2x}$ ❌
> 
> **Problema:** Quando tens $\ln(f(x))$, a derivada é $\frac{f'(x)}{f(x)}$, não $\frac{1}{f(x)}$!

**Correto:**
$$h'(x) = \frac{(x^3 + 2x)'}{x^3 + 2x} = \frac{3x^2 + 2}{x^3 + 2x}$$

> [!tip] Lembra-te!
> $$[\ln(f(x))]' = \frac{f'(x)}{f(x)}$$
> A derivada de $\ln(x)$ é $\frac{1}{x}$, mas com composição tens de aplicar a cadeia!

**6d)** $p(x) = e^{x^2 - 1}$

> [!success] CORRETO
> $$p'(x) = e^{x^2-1} \cdot (x^2-1)' = e^{x^2-1} \cdot 2x = 2x \cdot e^{x^2-1}$$ ✅

---

### 7. Reta Tangente ✅

> [!success] CORRETO
> - $f(1) = 1^3 - 2(1) = 1 - 2 = -1$ ← ponto: $(1, -1)$
> - $f'(x) = 3x^2 - 2$
> - $f'(1) = 3(1)^2 - 2 = 3 - 2 = 1$ ← declive
> - Reta: $y - (-1) = 1(x - 1) \Rightarrow y = x - 2$ ✅

---

### 8. Integrais Indefinidos

**8a)** $\displaystyle\int (4x^3 - 6x + 2) \, dx$

> [!success] CORRETO
> $$\int (4x^3 - 6x + 2) \, dx = \frac{4x^4}{4} - \frac{6x^2}{2} + 2x + C = x^4 - 3x^2 + 2x + C$$ ✅

**8b)** $\displaystyle\int \dfrac{2x}{x^2 + 1} \, dx$

> [!success] CORRETO
> Padrão $\int \frac{f'(x)}{f(x)} dx = \ln|f(x)| + C$
> 
> $(x^2 + 1)' = 2x$ ← já está no numerador!
> 
> $$\int \frac{2x}{x^2+1} dx = \ln(x^2+1) + C$$ ✅

**8c)** $\displaystyle\int x \cdot e^x \, dx$

> [!success] CORRETO — Por partes perfeito!
> - $u = x \Rightarrow du = dx$
> - $dv = e^x dx \Rightarrow v = e^x$
> 
> $$\int x \cdot e^x dx = x \cdot e^x - \int e^x dx = x \cdot e^x - e^x + C = e^x(x-1) + C$$ ✅

**8d)** $\displaystyle\int \ln(x) \, dx$

> [!success] CORRETO — Por partes perfeito!
> - $u = \ln(x) \Rightarrow du = \frac{1}{x} dx$
> - $dv = dx \Rightarrow v = x$
> 
> $$\int \ln(x) dx = x \cdot \ln(x) - \int x \cdot \frac{1}{x} dx = x\ln(x) - x + C$$ ✅

---

### 9. Integrais Definidos ✅

**9a)** $\displaystyle\int_0^2 (3x^2 - 4x + 1) \, dx$

> [!success] CORRETO
> $$= \left[x^3 - 2x^2 + x\right]_0^2 = (8 - 8 + 2) - (0) = 2$$ ✅

**9b)** $\displaystyle\int_1^e \dfrac{1}{x} \, dx$

> [!success] CORRETO
> $$= [\ln(x)]_1^e = \ln(e) - \ln(1) = 1 - 0 = 1$$ ✅

---

### 10. Primitiva com Condição ❌

> [!danger] ERRADO — Erro aritmético
> **O que escreveste:** $F(1) = 2(1)^3 - 4(1) + C = 3 \Rightarrow C = -3$ ❌

**Problema:** $2 - 4 + C = 3 \Rightarrow -2 + C = 3 \Rightarrow C = 5$

**Resolução correta:**
$$F(x) = \int (6x^2 - 4) dx = 2x^3 - 4x + C$$

Condição: $F(1) = 3$
$$2(1)^3 - 4(1) + C = 3$$
$$2 - 4 + C = 3$$
$$-2 + C = 3$$
$$C = 5$$

**Resposta:** $F(x) = 2x^3 - 4x + 5$

---

### 11. Área ❌

> [!danger] ERRADO — Erro de cálculo (resultado = 0 é impossível!)

**O que escreveste:**
$$\int_{-2}^2 (x^2 - 4) dx = \left[\frac{x^3}{3} - 4x\right]_{-2}^2 = \frac{8}{3} - 8 - \frac{-8}{3} + 8 = 0$$ ❌

**Problema:** A área é a região entre $y = x^2$ e $y = 4$. Como $y = 4$ está **acima** de $y = x^2$ no intervalo $[-2, 2]$, tens de calcular:

$$A = \int_{-2}^2 (4 - x^2) dx$$

**NÃO** $(x^2 - 4)$! Isso dá área negativa!

**Resolução correta:**
$$A = \int_{-2}^2 (4 - x^2) dx = \left[4x - \frac{x^3}{3}\right]_{-2}^2$$

$$= \left(8 - \frac{8}{3}\right) - \left(-8 - \frac{-8}{3}\right)$$

$$= \left(8 - \frac{8}{3}\right) - \left(-8 + \frac{8}{3}\right)$$

$$= 8 - \frac{8}{3} + 8 - \frac{8}{3}$$

$$= 16 - \frac{16}{3} = \frac{48 - 16}{3} = \frac{32}{3}$$

**Resposta:** $A = \dfrac{32}{3}$ unidades de área

> [!tip] Lembra-te para áreas!
> **SEMPRE:** $\int (\text{curva de cima} - \text{curva de baixo})$
> 
> **Como saber qual está por cima quando são iguais nos extremos?**
> → Testa um ponto **no meio** do intervalo!
> 
> Neste caso, em $x = 0$:
> - $y = x^2 = 0$
> - $y = 4$
> 
> Como $4 > 0$, a reta $y = 4$ está **por cima**. Logo: $(4 - x^2)$, não $(x^2 - 4)$!

---

## Erros Identificados

### ❌ Erros Críticos (repetidos)

1. **Limite trigonométrico** — usaste derivada em vez do limite notável
2. **Derivada $\ln(f(x))$** — esqueceste a regra da cadeia (OUTRA VEZ!)
3. **Área** — subtraíste ao contrário (curva de baixo - curva de cima = negativo)
4. **Erro de sinal** na derivada 6a

### ⚠️ Erros de Cálculo

1. **Primitiva com condição** — $2 - 4 = -2$, não $2$ → $C = 5$, não $-3$
2. **Assíntota horizontal** — não calculaste

### ✅ Pontos Positivos

1. **Domínios** — perfeitos! Lembras-te do $\pm$
2. **Bolzano** — dominado
3. **Continuidade k** — dominado
4. **Por partes** — EXCELENTE! Tanto $xe^x$ como $\ln(x)$ perfeitos!
5. **Padrão f'/f** — correto!
6. **Reta tangente** — perfeito!
7. **Integrais definidos** — corretos!
8. **Derivada exponencial composta** — correto (cadeia com $e^{f(x)}$)

---

## Próximos Passos

> [!warning] URGENTE — Estudar antes do próximo teste

### 1. Limite trigonométrico (NOVO)
$$\lim_{x \to 0} \frac{\sin(ax)}{bx} = \frac{a}{b}$$

**Não é derivada!** É limite notável.

### 2. Derivada de $\ln(f(x))$ (REPETIDO!)
$$[\ln(f(x))]' = \frac{f'(x)}{f(x)}$$

Já erraste isto no teste 14 com $\sqrt{f(x)}$. Tens de aplicar a regra da cadeia SEMPRE que tens função composta!

### 3. Áreas (REPETIDO!)
- Verificar qual curva está por cima ANTES de subtrair
- $\int (\text{cima} - \text{baixo})$, NUNCA ao contrário
- Se o resultado der negativo, inverteste a ordem!

---

**Nota final estimada:** ~12-13/20

Mantiveste o nível do teste 14. Os erros principais são a regra da cadeia e as áreas — ambos corrigíveis com prática!
