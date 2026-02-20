# Correção — Teste 12 AMI

> [!info] Informação
> **Disciplina:** Análise Matemática I (AMI)
> **Data:** 2026-02-16
> **Nota estimada:** ~10-11/20

---

## 1. Domínios

### a) $f(x) = \dfrac{x + 1}{\sqrt{x^2 - 9}}$

> [!warning] Parcialmente correto
> **Tua resposta:** $x^2 - 9 > 0 \Rightarrow x > 3$, $D_f = ]3, +\infty[$
> 
> **Faltou:** $x < -3$
> 
> **Correto:** $x^2 > 9 \Rightarrow |x| > 3 \Rightarrow x > 3$ **ou** $x < -3$
> 
> $$D_f = ]-\infty, -3[ \cup ]3, +\infty[$$

### b) $g(x) = \ln(2x - 6) + \sqrt{x - 1}$

> [!success] Correto
> **Tua resposta:** $D_g = ]3, +\infty[$
> 
> **Nota:** Devias ter mostrado ambas as condições:
> - $\ln$: $2x - 6 > 0 \Rightarrow x > 3$
> - $\sqrt{}$: $x - 1 \geq 0 \Rightarrow x \geq 1$
> - Interseção: $x > 3$

---

## 2. Limites

### a) $\displaystyle\lim_{x \to 2} \dfrac{x^2 - 4}{x^2 - 5x + 6}$

> [!success] Correto
> Factorizaste corretamente:
> $$\frac{(x-2)(x+2)}{(x-2)(x-3)} = \frac{x+2}{x-3} = \frac{4}{-1} = -4$$

### b) $\displaystyle\lim_{x \to +\infty} \dfrac{4x^3 - 2x + 1}{2x^3 + x^2 - 3}$

> [!success] Correto
> Dividiste por $x^3$, obtiveste $\dfrac{4}{2} = 2$

### c) $\displaystyle\lim_{x \to 0} \dfrac{\sqrt{1 + x} - 1}{x}$

> [!danger] Incorreto
> **Tua resposta:** Separaste a fração e obtiveste $1$
> 
> **Método correto:** Multiplicar pelo conjugado
> $$\lim_{x \to 0} \frac{\sqrt{1+x} - 1}{x} \cdot \frac{\sqrt{1+x} + 1}{\sqrt{1+x} + 1} = \lim_{x \to 0} \frac{(1+x) - 1}{x(\sqrt{1+x} + 1)} = \lim_{x \to 0} \frac{1}{\sqrt{1+x} + 1} = \frac{1}{2}$$
> 
> **Resposta correta:** $\dfrac{1}{2}$

---

## 3. Continuidade (determinar k)

$$f(x) = \begin{cases} \dfrac{x^2 - 4}{x - 2}, & x \neq 2 \\ k, & x = 2 \end{cases}$$

> [!success] Correto
> $$\lim_{x \to 2} \frac{x^2-4}{x-2} = \lim_{x \to 2} \frac{(x-2)(x+2)}{x-2} = \lim_{x \to 2} (x+2) = 4$$
> 
> $$k = 4$$

---

## 4. Teorema de Bolzano

$h(x) = x^3 - 3x + 1$, mostrar zero em $]0, 1[$

> [!success] Correto
> - $h(0) = 0 - 0 + 1 = 1 > 0$
> - $h(1) = 1 - 3 + 1 = -1 < 0$
> - Sinais opostos $\Rightarrow$ pelo Teorema de Bolzano, existe pelo menos um zero em $]0, 1[$

---

## 5. Assíntotas

$f(x) = \dfrac{2x^2 + 3x - 2}{x + 1}$

> [!warning] Parcialmente correto
> **Assíntota Vertical:** $x = -1$ ✓
> 
> **Assíntota Horizontal:** Não tem (grau 2 > grau 1) ✓
> 
> **Assíntota Oblíqua:**
> - $m = 2$ ✓
> - $b = -2$ ✗
> 
> **Cálculo correto de b:**
> $$b = \lim_{x \to \infty} \left[\frac{2x^2+3x-2}{x+1} - 2x\right] = \lim_{x \to \infty} \frac{2x^2+3x-2-2x(x+1)}{x+1}$$
> $$= \lim_{x \to \infty} \frac{2x^2+3x-2-2x^2-2x}{x+1} = \lim_{x \to \infty} \frac{x-2}{x+1} = 1$$
> 
> **Assíntota oblíqua correta:** $y = 2x + 1$

---

## 6. Derivadas

### a) $f(x) = (3x^2 - 2x + 1)^4$

> [!success] Correto
> $$f'(x) = 4(3x^2 - 2x + 1)^3 \cdot (6x - 2)$$

### b) e c) — Não avaliadas

> [!note] A estudar
> - **6b)** Regra do quociente: $(f/g)' = \dfrac{f'g - fg'}{g^2}$
> - **6c)** Regra da cadeia com $e^x$ e $\ln(x)$

---

## 7. Reta tangente

$f(x) = x^3 - 2x$, no ponto $x = 1$

> [!success] Correto
> - $f(1) = 1 - 2 = -1$
> - $f'(x) = 3x^2 - 2$, $f'(1) = 3 - 2 = 1$
> - Reta: $y - (-1) = 1(x - 1) \Rightarrow y = x - 2$

---

## 8. Integrais indefinidos

### a) $\displaystyle\int (4x^3 - 6x + 2) \, dx$

> [!success] Correto
> $$x^4 - 3x^2 + 2x + C$$

### b) $\displaystyle\int \dfrac{2x}{x^2 + 3} \, dx$

> [!success] Correto
> $$\ln(x^2 + 3) + C$$

### c) $\displaystyle\int x \cdot e^{2x} \, dx$

> [!danger] Incorreto
> **Tua resposta:** $x \cdot e^{2x} - e^{2x} + C$
> 
> **Erro:** Não dividiste por 2 ao integrar $e^{2x}$
> 
> **Correto:** Por partes com $u = x$, $dv = e^{2x}dx$
> - $du = dx$
> - $v = \dfrac{e^{2x}}{2}$
> 
> $$\int x \cdot e^{2x} dx = x \cdot \frac{e^{2x}}{2} - \int \frac{e^{2x}}{2} dx = \frac{xe^{2x}}{2} - \frac{e^{2x}}{4} + C$$
> 
> **Resposta correta:** $\dfrac{e^{2x}(2x-1)}{4} + C$

### d) $\displaystyle\int \ln(x) \, dx$

> [!success] Correto
> $$x\ln(x) - x + C$$

---

## 9. Integrais definidos

### a) $\displaystyle\int_{1}^{3} (x^2 - 2x + 1) \, dx$

> [!warning] Erro de sinal
> **Tua resposta:** $-\dfrac{8}{3}$
> 
> **Cálculo:**
> $$\left[\frac{x^3}{3} - x^2 + x\right]_1^3 = (9 - 9 + 3) - \left(\frac{1}{3} - 1 + 1\right) = 3 - \frac{1}{3} = \frac{8}{3}$$
> 
> **Resposta correta:** $\dfrac{8}{3}$ (positivo!)

### b) $\displaystyle\int_{1}^{e} \dfrac{2}{x} \, dx$

> [!success] Correto
> $$[2\ln(x)]_1^e = 2\ln(e) - 2\ln(1) = 2 - 0 = 2$$

---

## 10. Primitiva com condição inicial

$f(x) = 3x^2 - 4x$, $F(1) = 2$

> [!danger] ERRO GRAVE — Derivaste em vez de primitivar!
> **Tua resposta:** $F(x) = 6x - 4 + C$ (isto é a DERIVADA!)
> 
> **Correto:**
> $$F(x) = \int (3x^2 - 4x) dx = x^3 - 2x^2 + C$$
> 
> Condição: $F(1) = 1 - 2 + C = 2 \Rightarrow C = 3$
> 
> **Resposta correta:** $F(x) = x^3 - 2x^2 + 3$

---

## 11 e 12. Áreas — Não avaliadas

> [!note] A estudar
> Método para áreas sem limites dados:
> 1. Encontrar interseções: $f(x) = g(x)$
> 2. Determinar qual função está "por cima"
> 3. Calcular $\int_a^b [\text{superior} - \text{inferior}] \, dx$

---

## Resumo

| Questão | Resultado |
|---------|-----------|
| 1a | ⚠️ Parcialmente correto |
| 1b | ✓ Correto |
| 2a | ✓ Correto |
| 2b | ✓ Correto |
| 2c | ✗ Incorreto |
| 3 | ✓ Correto |
| 4 | ✓ Correto |
| 5 | ⚠️ Parcialmente correto |
| 6a | ✓ Correto |
| 6b-c | N/A |
| 7 | ✓ Correto |
| 8a | ✓ Correto |
| 8b | ✓ Correto |
| 8c | ✗ Incorreto |
| 8d | ✓ Correto |
| 9a | ⚠️ Erro de sinal |
| 9b | ✓ Correto |
| 10 | ✗ ERRO GRAVE |
| 11-12 | N/A |

---

## Erros a corrigir

> [!danger] Críticos
> 1. **DERIVAR vs PRIMITIVAR** — Q10: derivaste quando pediam primitiva!
> 2. **Primitiva de $e^{ax}$** — $\int e^{ax} dx = \dfrac{e^{ax}}{a} + C$

> [!warning] Importantes
> 3. **Domínios $x^2 > k$** — Duas soluções: $x > \sqrt{k}$ **ou** $x < -\sqrt{k}$
> 4. **Limite com conjugado** — Quando tens $\sqrt{a} - b$, multiplica por $\dfrac{\sqrt{a} + b}{\sqrt{a} + b}$
> 5. **Assíntota oblíqua (b)** — Verificar cálculo algébrico

---

## Tópicos a estudar

> [!todo] Para criar guias
> 1. Regra do quociente
> 2. Regra da cadeia com $e^x$ e $\ln(x)$
> 3. Áreas (encontrar limites, calcular)
