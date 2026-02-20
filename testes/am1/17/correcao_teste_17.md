# Correção — Teste AMI 17 (Mini-teste)

> [!info] Informação
> **Data:** 18 de fevereiro de 2026
> **Tipo:** Mini-teste focado em dificuldades
> **Nota:** Este teste foi feito logo após o 16 — alguns acertos são por memória recente

---

## Resumo

| Q | Tema | Resultado |
|---|------|-----------|
| 1a | Domínio $x^2 \geq 25$ | ✅ Correto (lembrou $\pm 5$!) |
| 1b | Domínio $x^2 \leq 9$ | ✅ Correto |
| 2a | Por partes $x^2 e^{2x}$ | ⚠️ Incompleto |
| 2b | Por partes $x \ln(x)$ | ✅ Correto! |
| 2c | Por partes $x^2 \cos(x)$ | ❌ Errado |
| 3a | Integral definido | ✅ Correto |
| 3b | Integral definido | ✅ Correto |
| 4 | Reta tangente | ❌ Errado (fórmula mal aplicada) |

---

## Correção Detalhada

### 1. Domínios ✅

**1a)** $f(x) = \sqrt{x^2 - 25}$

> [!success] CORRETO — Lembras-te das duas regiões!
> $x^2 - 25 \geq 0 \Rightarrow x^2 \geq 25 \Rightarrow |x| \geq 5$
> 
> **Resposta:** $D_f = ]-\infty, -5] \cup [5, +\infty[$ ✅

**1b)** $g(x) = \sqrt{9 - x^2}$

> [!success] CORRETO
> $9 - x^2 \geq 0 \Rightarrow x^2 \leq 9 \Rightarrow |x| \leq 3$
> 
> **Resposta:** $D_g = [-3, 3]$ ✅

---

### 2. Integrais por Partes

**2a)** $\displaystyle\int x^2 \cdot e^{2x} \, dx$

> [!warning] INCOMPLETO — Falta dividir por 2!
> **O que escreveste:** $x^2 e^{2x} - 2e^{2x} - e^{2x} + C$
> 
> **Problema:** Quando integras $e^{2x}$, tens de dividir por 2!

**Resolução correta (3 aplicações porque há $/2$):**

1ª aplicação: $u = x^2$, $dv = e^{2x} dx \Rightarrow v = \frac{e^{2x}}{2}$
$$= \frac{x^2 e^{2x}}{2} - \int x \cdot e^{2x} dx$$

2ª aplicação: $u = x$, $dv = e^{2x} dx \Rightarrow v = \frac{e^{2x}}{2}$
$$= \frac{x^2 e^{2x}}{2} - \left[\frac{x e^{2x}}{2} - \int \frac{e^{2x}}{2} dx\right]$$
$$= \frac{x^2 e^{2x}}{2} - \frac{x e^{2x}}{2} + \frac{e^{2x}}{4} + C$$

**Resposta:** $\dfrac{e^{2x}}{4}(2x^2 - 2x + 1) + C$

---

**2b)** $\displaystyle\int x \cdot \ln(x) \, dx$

> [!success] CORRETO — Excelente! Corrigiste o erro do teste 16!
> $u = \ln(x)$, $dv = x \, dx$
> $du = \frac{1}{x} dx$, $v = \frac{x^2}{2}$
> 
> $$= \frac{x^2}{2} \ln(x) - \int \frac{x^2}{2} \cdot \frac{1}{x} dx = \frac{x^2}{2} \ln(x) - \frac{1}{2} \int x \, dx$$
> $$= \frac{x^2}{2} \ln(x) - \frac{x^2}{4} + C$$ ✅

---

**2c)** $\displaystyle\int x^2 \cdot \cos(x) \, dx$

> [!danger] ERRADO — Confusão no método
> **O que escreveste:** $x^2 \sin(x) - \frac{x^3}{3} \cdot (-\sin(x)) + C$
> 
> **Problema:** Não podes multiplicar por $\frac{x^3}{3}$ — tens de aplicar por partes DUAS vezes!

**Resolução correta:**

1ª aplicação: $u = x^2$, $dv = \cos(x) dx \Rightarrow v = \sin(x)$
$$= x^2 \sin(x) - \int 2x \sin(x) dx$$

2ª aplicação: $u = 2x$, $dv = \sin(x) dx \Rightarrow v = -\cos(x)$
$$= x^2 \sin(x) - \left[-2x \cos(x) - \int -2\cos(x) dx\right]$$
$$= x^2 \sin(x) + 2x \cos(x) - 2\sin(x) + C$$

**Resposta:** $x^2 \sin(x) + 2x \cos(x) - 2\sin(x) + C$

---

### 3. Integrais Definidos ✅

**3a)** $\displaystyle\int_0^2 (3x^2 + 2x - 1) \, dx$

> [!success] CORRETO
> $$= \left[x^3 + x^2 - x\right]_0^2 = (8 + 4 - 2) - 0 = 10$$ ✅

**3b)** $\displaystyle\int_1^4 (x - 2) \, dx$

> [!success] CORRETO
> $$= \left[\frac{x^2}{2} - 2x\right]_1^4 = (8 - 8) - (\frac{1}{2} - 2) = 0 - (-\frac{3}{2}) = \frac{3}{2}$$ ✅
> 
> (Nota: escreveste $-\frac{3}{2}$ mas depois corrigiste o sinal)

---

### 4. Reta Tangente ❌

> [!danger] ERRADO — Fórmula mal aplicada
> **O que escreveste:** 
> - $f(1) = 0$ ✅
> - $f'(1) = 4$ ✅
> - $y = 0 - (4 - 4(0)) = -4$ ❌

**Problema:** A fórmula da reta tangente é:
$$y - y_0 = m(x - x_0)$$

Não é $y = y_0 - (m - mx_0)$!

**Resolução correta:**
- Ponto: $(1, 0)$ pois $f(1) = 1 + 2 - 3 = 0$
- Declive: $f'(1) = 2(1) + 2 = 4$
- Reta: $y - 0 = 4(x - 1)$
- **Resposta:** $y = 4x - 4$

---

## Análise

### O que melhorou (vs teste 16):
- ✅ **Domínios $x^2 \geq k$** — lembras-te das duas regiões!
- ✅ **$x \cdot \ln(x)$** — corrigiste o erro!
- ✅ **Integrais definidos** — cálculos corretos

### O que ainda precisa de trabalho:
- ❌ **Por partes com $e^{ax}$** — tens de dividir por $a$ cada vez que integras
- ❌ **Por partes com $x^2$** — precisa de DUAS aplicações completas
- ❌ **Reta tangente** — a fórmula é $y - y_0 = m(x - x_0)$, não outra coisa

---

## Nota sobre timing

> [!info] Observação
> Fazer testes muito próximos tem prós e contras:
> - ✅ **Prós:** Lembras-te dos erros recentes e corriges (ex: $x \cdot \ln(x)$)
> - ❌ **Contras:** Não há tempo para consolidar, podes ficar confuso com novos conceitos
> 
> **Sugestão:** Deixar pelo menos 1 dia entre testes para rever as correções e praticar os erros isoladamente.

---

**Próximo teste (18):** Quando estiveres pronto, faremos um teste completo normal.
