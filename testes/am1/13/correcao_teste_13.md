# Correção — Teste 13 AMI

> [!info] Informação
> **Disciplina:** Análise Matemática I (AMI)
> **Data:** 2026-02-16
> **Nota estimada:** ~14-15/20

---

## 1. Domínios

### a) $f(x) = \dfrac{\sqrt{x + 2}}{x^2 - 1}$

> [!success] Correto
> - $x^2 - 1 \neq 0 \Rightarrow x \neq \pm 1$
> - $x + 2 \geq 0 \Rightarrow x \geq -2$
> - $D_f = [-2, -1[ \cup ]-1, 1[ \cup ]1, +\infty[$
> 
> **Muito bem, lembraste do $\pm 1$!**

### b) $g(x) = \ln(4 - x^2)$

> [!success] Correto
> $4 - x^2 > 0 \Rightarrow x^2 < 4 \Rightarrow -2 < x < 2$
> 
> $D_g = ]-2, 2[$

---

## 2. Limites

### a) $\displaystyle\lim_{x \to 1} \dfrac{x^2 - 1}{x^2 - 3x + 2}$

> [!success] Correto
> $$\frac{(x-1)(x+1)}{(x-1)(x-2)} = \frac{x+1}{x-2} = \frac{2}{-1} = -2$$

### b) $\displaystyle\lim_{x \to +\infty} \dfrac{5x^2 + 3x - 1}{2x^2 - x + 4}$

> [!success] Correto
> Dividir por $x^2$: $\dfrac{5}{2}$

### c) $\displaystyle\lim_{x \to 0} \dfrac{\sqrt{4 + x} - 2}{x}$

> [!danger] Não resolvido
> **Método (conjugado):**
> $$\lim_{x \to 0} \dfrac{\sqrt{4+x} - 2}{x} \cdot \dfrac{\sqrt{4+x} + 2}{\sqrt{4+x} + 2} = \lim_{x \to 0} \dfrac{(4+x) - 4}{x(\sqrt{4+x} + 2)}$$
> 
> $$= \lim_{x \to 0} \dfrac{x}{x(\sqrt{4+x} + 2)} = \lim_{x \to 0} \dfrac{1}{\sqrt{4+x} + 2} = \dfrac{1}{2 + 2} = \dfrac{1}{4}$$
> 
> **Resposta:** $\dfrac{1}{4}$

---

## 3. Continuidade (k)

> [!success] Correto
> $$\lim_{x \to 1} \frac{x^2-1}{x-1} = \lim_{x \to 1} \frac{(x-1)(x+1)}{x-1} = \lim_{x \to 1} (x+1) = 2$$
> 
> $$k = 2$$

---

## 4. Bolzano

> [!success] Correto
> - $g(0) = 0 - 0 + 2 = 2 > 0$
> - $g(1) = 1 - 4 + 2 = -1 < 0$
> - Sinais opostos $\Rightarrow$ existe pelo menos um zero em $]0, 1[$

---

## 5. Assíntotas

$f(x) = \dfrac{x^2 - 2x + 3}{x - 2}$

> [!warning] Parcialmente correto
> **Assíntota Vertical:** $x = 2$ ✓
> 
> **Assíntota Horizontal:** Não tem (grau 2 > grau 1) ✓
> 
> **Assíntota Oblíqua:**
> 
> Tua resposta: $m = 3$ ✗
> 
> **Cálculo correto de m:**
> $$m = \lim_{x \to \infty} \dfrac{f(x)}{x} = \lim_{x \to \infty} \dfrac{x^2 - 2x + 3}{x(x-2)} = \lim_{x \to \infty} \dfrac{x^2 - 2x + 3}{x^2 - 2x} = 1$$
> 
> **Cálculo de b:**
> $$b = \lim_{x \to \infty} \left[\dfrac{x^2 - 2x + 3}{x - 2} - x\right] = \lim_{x \to \infty} \dfrac{x^2 - 2x + 3 - x(x-2)}{x-2} = \lim_{x \to \infty} \dfrac{3}{x-2} = 0$$
> 
> **Assíntota oblíqua correta:** $y = x$

---

## 6. Derivadas

### a) $f(x) = \dfrac{x^2 - 3}{x + 1}$ (regra do quociente)

> [!success] Correto
> $$f'(x) = \dfrac{2x \cdot (x+1) - 1 \cdot (x^2 - 3)}{(x+1)^2} = \dfrac{2x^2 + 2x - x^2 + 3}{(x+1)^2} = \dfrac{x^2 + 2x + 3}{(x+1)^2}$$

### b) $g(x) = (2x^3 + x - 1)^5$ (regra da cadeia)

> [!success] Correto
> $$g'(x) = 5(2x^3 + x - 1)^4 \cdot (6x^2 + 1)$$

### c) $h(x) = e^{3x} \cdot \ln(x)$ (produto + cadeia)

> [!success] Correto
> $$h'(x) = 3e^{3x} \cdot \ln(x) + e^{3x} \cdot \dfrac{1}{x} = e^{3x}\left(3\ln(x) + \dfrac{1}{x}\right)$$

---

## 7. Reta tangente

$f(x) = x^2 - 3x + 1$, no ponto $x = 2$

> [!success] Correto
> - $f(2) = 4 - 6 + 1 = -1$
> - $f'(x) = 2x - 3$, $f'(2) = 4 - 3 = 1$
> - $y - (-1) = 1(x - 2) \Rightarrow y = x - 3$

---

## 8. Integrais indefinidos

### a) $\int (5x^2 - 4x + 3) dx$

> [!success] Correto
> $$\dfrac{5x^3}{3} - 2x^2 + 3x + C$$

### b) $\int \dfrac{4x}{x^2 + 1} dx$

> [!success] Correto
> $$2\ln(x^2 + 1) + C$$
> 
> (Reconheceste que $4x = 2 \cdot 2x$ e $2x$ é a derivada de $x^2 + 1$)

### c) $\int x \cdot e^{3x} dx$

> [!success] Correto
> Por partes com $u = x$, $dv = e^{3x}dx$:
> $$x \cdot \dfrac{e^{3x}}{3} - \int \dfrac{e^{3x}}{3} dx = \dfrac{xe^{3x}}{3} - \dfrac{e^{3x}}{9} + C$$
> 
> **Dividiste por 3 corretamente!**

### d) $\int \ln(x) dx$

> [!success] Correto
> $$x \ln(x) - x + C$$

---

## 9. Integrais definidos

### a) $\int_{0}^{2} (x^2 - 3x + 2) dx$

> [!success] Correto
> $$\left[\dfrac{x^3}{3} - \dfrac{3x^2}{2} + 2x\right]_0^2 = \dfrac{8}{3} - 6 + 4 = \dfrac{8}{3} - 2 = \dfrac{2}{3}$$

### b) $\int_{1}^{e^2} \dfrac{1}{x} dx$

> [!success] Correto
> $$[\ln(x)]_1^{e^2} = \ln(e^2) - \ln(1) = 2 - 0 = 2$$

---

## 10. Primitiva com condição

$f(x) = 4x - 2$, $F(2) = 5$

> [!success] Correto — PRIMITIVASTE!
> $$F(x) = 2x^2 - 2x + C$$
> 
> Condição: $F(2) = 8 - 4 + C = 4 + C = 5 \Rightarrow C = 1$
> 
> $$F(x) = 2x^2 - 2x + 1$$
> 
> **Excelente! Não derivaste como nos testes anteriores!**

---

## 11 e 12. Áreas

> [!note] Não resolvido
> Precisas praticar áreas — ver guia `material_de_aula/guia_areas.md`

---

## Resumo

| Questão | Resultado |
|---------|-----------|
| 1a | ✓ Correto |
| 1b | ✓ Correto |
| 2a | ✓ Correto |
| 2b | ✓ Correto |
| 2c | ✗ Não resolvido |
| 3 | ✓ Correto |
| 4 | ✓ Correto |
| 5 | ⚠️ AV ok, AO errada |
| 6a | ✓ Correto |
| 6b | ✓ Correto |
| 6c | ✓ Correto |
| 7 | ✓ Correto |
| 8a | ✓ Correto |
| 8b | ✓ Correto |
| 8c | ✓ Correto |
| 8d | ✓ Correto |
| 9a | ✓ Correto |
| 9b | ✓ Correto |
| 10 | ✓ Correto |
| 11-12 | Não resolvido |

---

## Progressos neste teste

> [!success] Melhorias significativas
> - ✅ Domínios com $\pm$ — correto!
> - ✅ Regra do quociente — correto!
> - ✅ Regra da cadeia com $e^{3x}$ — correto!
> - ✅ Produto com $e^{3x} \cdot \ln(x)$ — correto!
> - ✅ Por partes com $e^{3x}$ — dividiste por 3!
> - ✅ **PRIMITIVASTE na Q10** — não derivaste!

> [!warning] A melhorar
> - Limite com conjugado — pratica mais
> - Assíntota oblíqua — erro no cálculo de $m$
> - Áreas — não resolveste
