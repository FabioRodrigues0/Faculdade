---
tags:
  - AMI
---

# Correção — Teste 10 de Análise Matemática I

> [!info] Resumo
> **Data:** 2026-02-14
> **Nota estimada:** ~13/20
> **Questões respondidas:** 8/10

---

## Resultados por Questão

| #   | Tópico             | Resultado | Comentário                                |
| --- | ------------------ | :-------: | ----------------------------------------- |
| 1a  | Domínio            |     ✅     | Lembrou $x = \pm 3$!                      |
| 1b  | Domínio combinado  |    ⚠️     | Esqueceu condição da raiz                 |
| 2a  | Limite             |     ✅     | Perfeito                                  |
| 2b  | Limite no infinito |     ✅     | Perfeito                                  |
| 3   | Continuidade com k |     ✅     | Perfeito                                  |
| 4   | Bolzano            |     ✅     | Perfeito                                  |
| 5   | Assíntotas         |    ⚠️     | AV correta, AO bloqueou no b              |
| 6a  | **Reta tangente**  |     ✅     | **EXCELENTE! Derivada e ponto corretos!** |
| 6b  | Extremos           |     ❌     | Não completou                             |
| 7a  | Primitiva básica   |     ✅     | Perfeito                                  |
| 7b  | Primitiva f'/f     |     ❌     | Confundiu com arctan                      |
| 7c  | Por partes         |     ✅     | Perfeito                                  |
| 8a  | Integral definido  |     ❌     | Esqueceu termo $-x$                       |
| 8b  | Integral definido  |     ✅     | Perfeito                                  |
| 9   | Áreas              |     —     | Não respondeu                             |
| 10  | Trigonometria      |     —     | Não respondeu                             |

---

## Correção Detalhada

### Questão 1a — Domínio ✅

**Tua resposta:** $x^2 - 9 \neq 0 \Rightarrow x \neq \pm 3$, $D_f = ]-\infty, -3[ \cup ]-3, 3[ \cup ]3, +\infty[$

**CORRETO!** Lembraste das duas soluções de $x^2 = 9$!

---

### Questão 1b — Domínio ⚠️

**Tua resposta:** $x^2 - 1 \neq 0 \Rightarrow x \neq \pm 1$, $D_g = ]-\infty, -1[ \cup ]-1, 1[ \cup ]1, +\infty[$

**Erro:** Esqueceste a condição da raiz!

**Correção:**
1. Raiz: $x + 2 \geq 0 \Rightarrow x \geq -2$
2. Denominador: $x^2 - 1 \neq 0 \Rightarrow x \neq \pm 1$

$$D_g = [-2, -1[ \cup ]-1, 1[ \cup ]1, +\infty[$$

> [!warning] Lembra-te
> Quando tens raiz E fração, são DUAS condições a combinar!

---

### Questão 2a — Limite ✅

**Tua resposta:** $\frac{(x-3)(x+3)}{x-3} = x + 3 = 6$

Perfeito!

---

### Questão 2b — Limite no infinito ✅

**Tua resposta:** Dividir por $x^3$ → $\frac{2}{5}$

Perfeito!

---

### Questão 3 — Continuidade com k ✅

**Tua resposta:** $\frac{(x-2)(x+2)}{x-2} = x + 2 = 4$, logo $k = 4$

Perfeito!

---

### Questão 4 — Bolzano ✅

**Tua resposta:**
- $g(0) = 1 > 0$
- $g(1) = -1 < 0$
- Sinais contrários → existe zero em $]0, 1[$

Perfeito!

---

### Questão 5 — Assíntotas ⚠️

**AV — Correto!**
$x = 2$, com $\lim_{x \to 2^+} f(x) = +\infty$ e $\lim_{x \to 2^-} f(x) = -\infty$

**AO — m correto, b incompleto**

Obtiveste $m = 2$ ✓

Mas bloqueaste no cálculo de $b$. Ver secção especial abaixo.

**Resultado correto:** $y = 2x + 3$

---

### Questão 6a — Reta tangente ✅

**Tua resposta:**
- $f(2) = 8 - 12 - 18 + 5 = -17$ ✓
- $f'(x) = 3x^2 - 6x - 9$ ✓
- $f'(2) = 12 - 12 - 9 = -9$ ✓
- $y = -9x + 1$ ✓

> [!success] EXCELENTE!
> **Derivada correta** ($-3x^2$ dá $-6x$, não $-3x$) e **ponto correto** ($x = 2$, não $x = 0$)!
> 
> Este era o problema no teste 9 — agora está resolvido!

---

### Questão 6b — Extremos ❌

**Não completaste.**

**Resolução:**

$$f'(x) = 3x^2 - 6x - 9 = 0$$
$$3(x^2 - 2x - 3) = 0$$
$$(x - 3)(x + 1) = 0$$
$$x = 3 \quad \text{ou} \quad x = -1$$

**Classificar com f''(x):**
$$f''(x) = 6x - 6$$
- $f''(3) = 12 > 0$ → **Mínimo** em $x = 3$
- $f''(-1) = -12 < 0$ → **Máximo** em $x = -1$

**Valores:**
- $f(3) = 27 - 27 - 27 + 5 = -22$ → Mínimo relativo em $(3, -22)$
- $f(-1) = -1 - 3 + 9 + 5 = 10$ → Máximo relativo em $(-1, 10)$

---

### Questão 7a — Primitiva básica ✅

**Tua resposta:** $x^4 - x^2 + 5x + C$

Perfeito!

---

### Questão 7b — Primitiva f'/f ❌

**Tua resposta:** $2\arctan(x^3) + C$

**ERRADO!** Confundiste o padrão.

| Padrão | Integral | Resultado |
|--------|----------|-----------|
| $\frac{f'(x)}{1 + f(x)^2}$ | $\int \frac{3x^2}{1 + (x^3)^2} dx$ | $\arctan(x^3) + C$ |
| $\frac{f'(x)}{f(x)}$ | $\int \frac{3x^2}{x^3 + 1} dx$ | $\ln|x^3 + 1| + C$ |

**Correção:**
$$\int \frac{6x^2}{x^3 + 1} dx = 2 \int \frac{3x^2}{x^3 + 1} dx = 2\ln|x^3 + 1| + C$$

> [!important] Regra
> - Denominador é $1 + u^2$ → arctan
> - Denominador é $u$ (sem quadrado, sem +1 à frente) → ln

---

### Questão 7c — Por partes ✅

**Tua resposta:** $x\sin(x) + \cos(x) + C$

Perfeito!

---

### Questão 8a — Integral definido ❌

**Tua resposta:** $[\frac{2x^2}{2}]_1^3 = 9 - 1 = 8$

**Erro:** Esqueceste o termo $-1$ na primitiva!

**Correção:**
$$\int_1^3 (2x - 1) dx = [x^2 - x]_1^3$$
$$= (9 - 3) - (1 - 1) = 6 - 0 = 6$$

---

### Questão 8b — Integral definido ✅

**Tua resposta:** $[xe^x - e^x]_0^1 = (e - e) - (0 - 1) = 0 + 1 = 1$

Perfeito!

---

### Questão 9 — Áreas (não respondida)

Ver secção especial abaixo.

---

### Questão 10 — Trigonometria (não respondida)

**Resolução:**
$$\sin(x) = \frac{\sqrt{2}}{2}$$

$\sin(x) = \frac{\sqrt{2}}{2}$ corresponde ao ângulo $\frac{\pi}{4}$ (45°)

Seno é positivo no 1º e 2º quadrantes:
- 1º quadrante: $x = \frac{\pi}{4}$
- 2º quadrante: $x = \pi - \frac{\pi}{4} = \frac{3\pi}{4}$

$$\boxed{x = \frac{\pi}{4} \quad \text{ou} \quad x = \frac{3\pi}{4}}$$

---

## Guia: Assíntotas Oblíquas — Como Calcular b

> [!important] O teu problema
> Consegues calcular $m$, mas bloqueas quando chegas a $b = \lim_{x \to \infty} [f(x) - mx]$ porque a fração "não dá para continuar".

### O truque: Meter tudo na MESMA fração

**Exemplo da questão 5:** $f(x) = \frac{2x^2 - x + 1}{x - 2}$, com $m = 2$

**Passo 1:** Escrever $f(x) - mx$
$$b = \lim_{x \to \infty} \left[\frac{2x^2 - x + 1}{x - 2} - 2x\right]$$

**Passo 2:** Meter na MESMA fração (multiplicar $2x$ pelo denominador)
$$= \lim_{x \to \infty} \frac{2x^2 - x + 1 - 2x \cdot (x - 2)}{x - 2}$$

**Passo 3:** Expandir o produto $2x \cdot (x - 2)$
$$2x \cdot (x - 2) = 2x^2 - 4x$$

**Passo 4:** Substituir e simplificar o numerador
$$= \lim_{x \to \infty} \frac{2x^2 - x + 1 - (2x^2 - 4x)}{x - 2}$$
$$= \lim_{x \to \infty} \frac{2x^2 - x + 1 - 2x^2 + 4x}{x - 2}$$
$$= \lim_{x \to \infty} \frac{3x + 1}{x - 2}$$

**Passo 5:** Agora é um limite normal! Dividir por $x$:
$$= \lim_{x \to \infty} \frac{3 + \frac{1}{x}}{1 - \frac{2}{x}} = \frac{3}{1} = 3$$

**Resultado:** $y = 2x + 3$

### Resumo do método

```
b = lim [f(x) - mx]

1. ESCREVER: f(x) - mx como fração única
   → Multiplica mx pelo denominador de f(x)
   
2. EXPANDIR: o produto mx · denominador

3. SIMPLIFICAR: os termos de maior grau CANCELAM-SE
   (Se não cancelarem, erraste o m!)
   
4. CALCULAR: limite da fração simplificada
```

---

## Guia: Áreas SEM Intervalos Dados

> [!important] O teu problema
> Nas aulas só fizeste com intervalos dados. Quando o enunciado não dá os limites, não sabes o que fazer.

### Método: Encontrar interseções

**Exemplo da questão 9:** $y = x^2$ e $y = 2x$

**Passo 1:** Encontrar onde as curvas se cruzam
$$x^2 = 2x$$
$$x^2 - 2x = 0$$
$$x(x - 2) = 0$$
$$x = 0 \quad \text{ou} \quad x = 2$$

Estes são os limites de integração: $a = 0$, $b = 2$

**Passo 2:** Ver qual está "por cima"

Testar um ponto entre 0 e 2 (por exemplo, $x = 1$):
- $y = x^2 = 1^2 = 1$
- $y = 2x = 2(1) = 2$

$2x > x^2$ neste intervalo, logo $y = 2x$ está por cima.

**Passo 3:** Calcular a área
$$A = \int_0^2 [\text{superior} - \text{inferior}] dx = \int_0^2 (2x - x^2) dx$$

$$= \left[x^2 - \frac{x^3}{3}\right]_0^2 = \left(4 - \frac{8}{3}\right) - (0) = \frac{12 - 8}{3} = \frac{4}{3}$$

### Resumo

```
ÁREA ENTRE DUAS CURVAS (sem limites dados):

1. IGUALAR as funções: f(x) = g(x)
   → Resolver para encontrar x = a e x = b
   
2. TESTAR um ponto entre a e b
   → Ver qual função tem valor MAIOR (está por cima)
   
3. INTEGRAR: ∫ₐᵇ [superior - inferior] dx
```

---

## Análise de Progresso

### Vitórias neste teste

| Tópico | Antes | Agora |
|--------|-------|-------|
| **Domínios ($x^2 = k$)** | Esquecia $\pm$ | **Lembrou!** |
| **Reta tangente** | Ponto errado, derivada errada | **Tudo correto!** |
| **Por partes** | OK | OK |
| **TFC** | OK | OK |

### Problemas persistentes

| Erro | Ocorrência |
|------|------------|
| Assíntota oblíqua (b) | Bloqueia na fração |
| Padrão f'/f vs arctan | Confunde os dois |
| Primitiva de constante | Esqueceu $-x$ na Q8a |
| Extremos | Não completou |

### Próximos passos

1. **Praticar cálculo de b** (assíntota oblíqua) — usar o método "meter na mesma fração"
2. **Distinguir padrões:**
   - $\frac{f'}{f}$ → ln
   - $\frac{f'}{1+f^2}$ → arctan
3. **Não esquecer termos constantes** na primitiva
4. **Áreas:** praticar encontrar interseções

---

**Última atualização:** 2026-02-14
