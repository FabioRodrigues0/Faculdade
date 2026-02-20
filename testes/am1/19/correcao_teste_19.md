# Correção — Teste AMI 19

> [!info] Informação
> **Disciplina:** Análise Matemática I
> **Data da correção:** 19 de fevereiro de 2026

---

## Pergunta 1 — Domínios

### a) $f(x) = \dfrac{x^2 + 1}{x^2 - 4x + 3}$

**Tua resposta:** 
- Fórmula resolvente: $x = \dfrac{4 \pm \sqrt{16 - 12}}{2} = \dfrac{4 \pm 2}{2}$
- $x = 3$ ou $x = 1$
- $D_f = ]1, 3[$

**Correção:** ❌ **INCORRETO**

> [!warning] Erro na notação do domínio
> Encontraste corretamente os valores que anulam o denominador ($x = 1$ e $x = 3$), mas o domínio está mal escrito.

**Resolução correta:**

O denominador não pode ser zero: $x^2 - 4x + 3 = 0 \Rightarrow x = 1$ ou $x = 3$

$$D_f = \mathbb{R} \setminus \{1, 3\} = ]-\infty, 1[ \cup ]1, 3[ \cup ]3, +\infty[$$

O domínio inclui **tudo exceto** 1 e 3, não apenas o intervalo entre eles.

---

### b) $g(x) = \ln(x^2 - 9)$

**Tua resposta:** $x^2 - 9 > 0 \Leftrightarrow x^2 > 9 \Leftrightarrow x > 3$, logo $D_g = ]-\infty, -3[ \cup ]3, +\infty[$

**Correção:** ✅ **CORRETO**

Boa! Reconheceste que $x^2 > 9$ implica $|x| > 3$, ou seja, $x < -3$ ou $x > 3$.

---

### c) $h(x) = \dfrac{\sqrt{x + 2}}{x - 1}$

**Tua resposta:** 
- $x - 1 \neq 0 \Leftrightarrow x \neq 1$
- $x + 2 \geq 0 \Leftrightarrow x \geq -2$
- $D_h = [-2, 1[ \cup ]1, +\infty[$

**Correção:** ✅ **CORRETO**

---

## Pergunta 2 — Limites

### a) $\displaystyle \lim_{x \to 2} \dfrac{x^2 - 4}{x^2 - 5x + 6}$

**Tua resposta:** 
$$= \lim_{x \to 2} \dfrac{(x-2)(x+2)}{(x-2)(x-3)} = \lim_{x \to 2} \dfrac{x+2}{x-3} = \dfrac{2+2}{2-3} = \dfrac{4}{-1} = -4$$

**Correção:** ✅ **CORRETO**

---

### b) $\displaystyle \lim_{x \to +\infty} \dfrac{4x^3 - 2x + 1}{2x^3 + x^2 - 3}$

**Tua resposta:** 
$$= \lim_{x \to +\infty} \dfrac{4 - \frac{2}{x^2} + \frac{1}{x^3}}{2 + \frac{1}{x} - \frac{3}{x^3}} = \dfrac{4}{2} = 2$$

**Correção:** ✅ **CORRETO**

---

### c) $\displaystyle \lim_{x \to 0} \dfrac{\sqrt{1 + 2x} - 1}{x}$

**Tua resposta:** Multiplicaste pelo conjugado:
$$= \lim_{x \to 0} \dfrac{(\sqrt{1+2x} - 1)(\sqrt{1+2x} + 1)}{x(\sqrt{1+2x} + 1)} = \lim_{x \to 0} \dfrac{1+2x-1}{x(\sqrt{1+2x} + 1)} = \lim_{x \to 0} \dfrac{2x}{x(\sqrt{1+2x} + 1)}$$

**Correção:** ✅ **CORRETO** (mas incompleto)

Faltou concluir:
$$= \lim_{x \to 0} \dfrac{2}{\sqrt{1+2x} + 1} = \dfrac{2}{1 + 1} = \dfrac{2}{2} = 1$$

---

## Pergunta 3 — Continuidade

**Tua resposta:** 
$$\lim_{x \to 1} \dfrac{x^2 - 1}{x - 1} = \lim_{x \to 1} \dfrac{(x-1)(x+1)}{x-1} = \lim_{x \to 1} (x + 1) = 1 + 1 = 2$$

$k = 2$

**Correção:** ✅ **CORRETO**

---

## Pergunta 4 — Teorema de Bolzano

**Tua resposta:**
- $g(0) = 0^3 - 3(0) + 1 = 1 > 0$
- $g(1) = 1^3 - 3(1) + 1 = 1 - 3 + 1 = -1 < 0$

Como $g$ é contínua e $g(0) > 0$ e $g(1) < 0$, pelo Teorema de Bolzano existe pelo menos um zero em $]0, 1[$.

**Correção:** ✅ **CORRETO**

Excelente! Aprendeste com o erro do teste 18 — desta vez escolheste bem os pontos.

---

## Pergunta 5 — Assíntotas

**Tua resposta:**
- AV: $x + 2 = 0 \Rightarrow x = -2$
- AH: $\displaystyle \lim_{x \to +\infty} \dfrac{3x - 1}{x + 2} = \dfrac{3 - \frac{1}{x}}{1 + \frac{2}{x}} = 3$

AV: $x = -2$, AH: $y = 3$

**Correção:** ✅ **CORRETO**

---

## Pergunta 6 — Derivadas

### a) $f(x) = x^5 - 4x^3 + 2x - 7$

**Tua resposta:** $f'(x) = 5x^4 - 12x^2 + 2$

**Correção:** ✅ **CORRETO**

---

### b) $g(x) = (3x^2 + 1)^4$

**Tua resposta:** $g'(x) = 4(3x^2 + 1)^3 \cdot 6x$

**Correção:** ✅ **CORRETO**

Simplificado: $g'(x) = 24x(3x^2 + 1)^3$

---

### c) $h(x) = \dfrac{x^2 + 2}{x - 1}$

**Tua resposta:** (não visível no PDF)

**Resolução correta:**
$$h'(x) = \dfrac{2x(x-1) - (x^2 + 2)(1)}{(x-1)^2} = \dfrac{2x^2 - 2x - x^2 - 2}{(x-1)^2} = \dfrac{x^2 - 2x - 2}{(x-1)^2}$$

---

### d) $p(x) = e^{2x} \cdot \ln(x)$

**Tua resposta:** $p'(x) = (e^{2x} \cdot 2) \cdot \ln(x) + e^{2x} \cdot \dfrac{1}{x}$

**Correção:** ✅ **CORRETO**

Simplificado: $p'(x) = e^{2x} \left( 2\ln(x) + \dfrac{1}{x} \right)$

---

## Pergunta 7 — Reta Tangente

**Tua resposta:**
- $f(1) = 1^3 - 2(1) = 1 - 2 = -1$
- $f'(x) = 3x^2 - 2$, logo $f'(1) = 3(1)^2 - 2 = 1$
- Ponto: $(1, -1)$
- Declive: $m = 1$
- RT: $y = x - 2$ (ou $y + 1 = 1(x - 1)$)

**Correção:** ✅ **CORRETO**

Desta vez escreveste a equação da reta! Muito bem.

---

## Pergunta 8 — Integrais Indefinidos

### a) $\displaystyle \int (6x^2 - 4x + 3) \, dx$

**Tua resposta:** $2x^3 - 2x^2 + 3x + C$

**Correção:** ✅ **CORRETO**

---

### b) $\displaystyle \int \dfrac{4x}{x^2 + 3} \, dx$

**Tua resposta:** $2\ln(x^2 + 3) + C$

**Correção:** ✅ **CORRETO**

Reconheceste o padrão $\dfrac{f'(x)}{f(x)}$ com ajuste de constante (derivada de $x^2+3$ é $2x$, tens $4x$, então multiplicas por 2).

---

### c) $\displaystyle \int x \cdot \cos(x) \, dx$

**Tua resposta:** 
- $u = x$, $dv = \cos(x) \, dx$
- $du = dx$, $v = \sin(x)$
- $= x \cdot \sin(x) - \int \sin(x) \, dx = x \cdot \sin(x) + \cos(x) + C$

**Correção:** ✅ **CORRETO**

Excelente! Integração por partes bem aplicada.

---

### d) $\displaystyle \int x^2 \cdot e^x \, dx$

**Tua resposta:** 
Aplicaste integração por partes duas vezes:
- 1ª vez: $u = x^2$, $dv = e^x dx$ → $x^2 e^x - \int 2x \cdot e^x \, dx$
- 2ª vez: $u = 2x$, $dv = e^x dx$ → $2x \cdot e^x - \int 2e^x \, dx = 2x \cdot e^x - 2e^x$

Resultado: $x^2 e^x - 2x \cdot e^x + 2e^x + C = e^x(x^2 - 2x + 2) + C$

**Correção:** ✅ **CORRETO**

Muito bem! Aplicaste corretamente integração por partes duas vezes consecutivas.

---

## Pergunta 9 — Integral Definida

$$\int_1^3 (2x^2 - x + 1) \, dx$$

**Tua resposta:**
$$= \left[ \dfrac{2x^3}{3} - \dfrac{x^2}{2} + x \right]_1^3$$

Para $x = 3$: $\dfrac{2(27)}{3} - \dfrac{9}{2} + 3 = 18 - \dfrac{9}{2} + 3 = \dfrac{54 - 9 + 6}{2} = \dfrac{51}{2}$

Para $x = 1$: $\dfrac{2}{3} - \dfrac{1}{2} + 1 = \dfrac{4 - 3 + 6}{6} = \dfrac{7}{6}$

Resultado: $\dfrac{51}{2} - \dfrac{7}{6} = \dfrac{153 - 7}{6} = \dfrac{146}{6} = \dfrac{73}{3}$

**Correção:** ❌ **ERRO DE CÁLCULO**

> [!warning] Verificação

**Resolução correta:**

$$\left[ \dfrac{2x^3}{3} - \dfrac{x^2}{2} + x \right]_1^3$$

Para $x = 3$: $\dfrac{54}{3} - \dfrac{9}{2} + 3 = 18 - 4.5 + 3 = 16.5 = \dfrac{33}{2}$

Para $x = 1$: $\dfrac{2}{3} - \dfrac{1}{2} + 1 = \dfrac{4 - 3 + 6}{6} = \dfrac{7}{6}$

$$= \dfrac{33}{2} - \dfrac{7}{6} = \dfrac{99 - 7}{6} = \dfrac{92}{6} = \dfrac{46}{3}$$

No teu PDF vejo que chegaste a $\dfrac{11}{2}$, o que também não corresponde. Verifica os cálculos.

---

## Pergunta 10 — Primitiva com Condição Inicial

**Tua resposta:**
- $F(x) = 2\ln|x| + 2x^2 + C$
- $F(1) = 2\ln(1) + 2(1)^2 + C = 0 + 2 + C = 3$
- $C = 1$

$F(x) = 2\ln|x| + 2x^2 + 1$

**Correção:** ✅ **CORRETO**

---

## Pergunta 11 — Área

**Tua resposta:**

A área entre $y = 6 - x^2$ e $y = 2$:
$$A = \int_{-2}^{2} [(6 - x^2) - 2] \, dx = \int_{-2}^{2} (4 - x^2) \, dx$$

$$= \left[ 4x - \dfrac{x^3}{3} \right]_{-2}^{2}$$

Para $x = 2$: $8 - \dfrac{8}{3} = \dfrac{24 - 8}{3} = \dfrac{16}{3}$

Para $x = -2$: $-8 - \dfrac{-8}{3} = -8 + \dfrac{8}{3} = \dfrac{-24 + 8}{3} = -\dfrac{16}{3}$

$$A = \dfrac{16}{3} - \left( -\dfrac{16}{3} \right) = \dfrac{32}{3}$$

**Correção:** ❌ **ERRO DE CÁLCULO** (no PDF)

No PDF parece que chegaste a $\dfrac{40}{3}$, mas o resultado correto é $\dfrac{32}{3}$.

**Verificação:**
$$A = \dfrac{16}{3} + \dfrac{16}{3} = \dfrac{32}{3} \approx 10.67 \text{ u.a.}$$

---

## Resumo

| Pergunta | Resultado |
|:--------:|:---------:|
| 1a | ❌ (domínio mal escrito) |
| 1b | ✅ |
| 1c | ✅ |
| 2a | ✅ |
| 2b | ✅ |
| 2c | ✅ (incompleto) |
| 3 | ✅ |
| 4 | ✅ |
| 5 | ✅ |
| 6a | ✅ |
| 6b | ✅ |
| 6c | ? (não visível) |
| 6d | ✅ |
| 7 | ✅ |
| 8a | ✅ |
| 8b | ✅ |
| 8c | ✅ |
| 8d | ✅ |
| 9 | ❌ (erro de cálculo) |
| 10 | ✅ |
| 11 | ❌ (erro de cálculo) |

**Acertos:** ~16/20 alíneas (~80%)

---

## Pontos a Melhorar

> [!important] Erros identificados

1. **Domínios (1a):** Quando excluis valores do domínio, o resultado é $\mathbb{R}$ **menos** esses valores, não apenas um intervalo. $D_f = ]-\infty, 1[ \cup ]1, 3[ \cup ]3, +\infty[$, não $]1, 3[$.

2. **Cálculos aritméticos (9 e 11):** Os métodos estão corretos, mas houve erros nas contas finais. Recomendo verificar os cálculos com mais calma.

3. **Limite 2c:** Não terminaste — faltou o passo final para obter o resultado $= 1$.

---

## Evolução

> [!success] Progressos em relação ao teste 18

- ✅ **Bolzano:** Desta vez escolheste pontos que dão sinais opostos
- ✅ **Integração por partes:** Aplicaste corretamente em 8c e 8d (incluindo por partes duplo!)
- ✅ **Reta tangente:** Escreveste a equação completa
- ✅ **Substituição:** Reconheceste o padrão em 8b

Muito bom progresso! Os erros são maioritariamente de cálculo/notação, não de conceito.
