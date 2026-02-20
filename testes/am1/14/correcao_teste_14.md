---
tags:
  - AMI
---

# Correção — Teste 14 AMI

> [!info] Informação
> **Data do teste:** 2026-02-17
> **Data da correção:** 2026-02-17

---

## Questão 1 — Domínios

### 1a) $f(x) = \dfrac{1}{\sqrt{x^2 - 9}}$

**Tua resposta:**
$x^2 - 9 > 0 \Rightarrow x^2 > 9 \Rightarrow x > 3$ ou $x < -3$
$D_f = ]-\infty, -3[ \cup ]3, +\infty[$

> [!success] Correto
> Raciocínio perfeito. O radical no denominador exige $x^2 - 9 > 0$ (estritamente maior, porque está no denominador).

---

### 1b) $g(x) = \ln(2x - 3) + \sqrt{x + 1}$

**Tua resposta:**
- $2x - 3 > 0 \Rightarrow x > \frac{3}{2}$
- $x + 1 \geq 0 \Rightarrow x \geq -1$
- $D_g = [\frac{3}{2}, +\infty[$ (interseção)

> [!warning] Parcialmente correto
> O raciocínio está certo, mas escreveste $D_g = [-1, \frac{3}{2}[ \cup ]\frac{3}{2}, +\infty[$, o que não faz sentido (parece uma união quando deveria ser interseção).
> 
> **Resposta correta:** $D_g = ]\frac{3}{2}, +\infty[$
> 
> A interseção de $x > \frac{3}{2}$ com $x \geq -1$ é simplesmente $x > \frac{3}{2}$.

---

## Questão 2 — Limites

### 2a) $\displaystyle\lim_{x \to 3} \dfrac{x^2 - 9}{x^2 - 5x + 6}$

**Tua resposta:**
$$\frac{(x-3)(x+3)}{(x-3)(x-2)} = \frac{x+3}{x-2} = \frac{3+3}{3-2} = \frac{6}{1} = 6$$

> [!success] Correto
> Fatorização e simplificação perfeitas.

---

### 2b) $\displaystyle\lim_{x \to +\infty} \dfrac{3x^3 - 2x + 1}{6x^3 + x^2 - 4}$

**Tua resposta:**
$$\frac{3 - \frac{2}{x^2} + \frac{1}{x^3}}{6 + \frac{1}{x} - \frac{4}{x^3}} = \frac{3}{6} = \frac{1}{2}$$

> [!success] Correto
> Divisão por $x^3$ bem executada.

---

### 2c) $\displaystyle\lim_{x \to 0} \dfrac{\sqrt{1 + x} - 1}{x}$

**Tua resposta:** (em branco / incompleto)

> [!danger] Não resolvido
> 
> **Resolução:**
> Multiplicar pelo conjugado:
> $$\frac{\sqrt{1+x} - 1}{x} \cdot \frac{\sqrt{1+x} + 1}{\sqrt{1+x} + 1} = \frac{(1+x) - 1}{x(\sqrt{1+x} + 1)} = \frac{x}{x(\sqrt{1+x} + 1)} = \frac{1}{\sqrt{1+x} + 1}$$
> 
> Quando $x \to 0$:
> $$\frac{1}{\sqrt{1+0} + 1} = \frac{1}{1 + 1} = \frac{1}{2}$$

---

## Questão 3 — Continuidade

**Tua resposta:**
$$f(x) = \frac{x^2 - 4}{x - 2} = \frac{(x-2)(x+2)}{x-2} = x + 2$$

Para $x = 2$: $f(2) = 2 + 2 = 4$

$k = 4$

> [!success] Correto
> Perfeito. Simplificaste corretamente e determinaste $k = 4$.

---

## Questão 4 — Bolzano

**Tua resposta:**
- $h(0) = 0^3 - 3(0) + 1 = 1 > 0$
- $h(1) = 1^3 - 3(1) + 1 = -1 < 0$

$h(0) > 0$ e $h(1) < 0$, logo pelo Teorema de Bolzano existe pelo menos um zero em $]0, 1[$.

> [!success] Correto
> Aplicação correta do teorema. Faltou apenas mencionar que $h$ é contínua (por ser polinomial), mas o essencial está lá.

---

## Questão 5 — Assíntotas

**Tua resposta:**
- **AV:** $x + 2 = 0 \Rightarrow x = -2$
- Verificação dos limites laterais: $f(-2^+) = +\infty$, $f(-2^-) = -\infty$
- **AO:** $m = \lim_{x \to +\infty} \frac{f(x)}{x} = \lim \frac{2x^2 + x - 1}{x(x+2)} = \lim \frac{2x^2 + x - 1}{x^2 + 2x} = 2$
- $b = \lim_{x \to +\infty} (f(x) - 2x) = \lim \frac{2x^2 + x - 1 - 2x(x+2)}{x+2} = \lim \frac{2x^2 + x - 1 - 2x^2 - 4x}{x+2} = \lim \frac{-3x - 1}{x+2} = -3$

**AO:** $y = 2x - 3$

> [!warning] Quase correto
> O cálculo está correto, mas escreveste "$y = 2x + 2$" no final do PDF quando deveria ser $y = 2x - 3$.
> 
> Vamos verificar:
> - $b = \lim \frac{-3x - 1}{x + 2} = \lim \frac{-3 - \frac{1}{x}}{1 + \frac{2}{x}} = \frac{-3}{1} = -3$
> 
> **Resposta correta:**
> - AV: $x = -2$
> - AO: $y = 2x - 3$
> - AH: Não existe (grau do numerador > grau do denominador)

---

## Questão 6 — Derivadas

### 6a) $f(x) = \dfrac{3x + 1}{x^2 - 2}$

**Tua resposta:**
$$f'(x) = \frac{3(x^2 - 2) - 2x(3x + 1)}{(x^2 - 2)^2} = \frac{3x^2 - 6 - 6x^2 - 2x}{(x^2 - 2)^2} = \frac{-3x^2 - 2x - 6}{(x^2 - 2)^2}$$

> [!success] Correto
> Regra do quociente aplicada corretamente. A simplificação está certa:
> $3x^2 - 6 - 6x^2 - 2x = -3x^2 - 2x - 6$

---

### 6b) $g(x) = \sqrt{x^3 + 2x - 1}$

**Tua resposta:**
$$g'(x) = \frac{1}{2\sqrt{x^3 + 2x - 1}} \cdot (3x^2 + 2)$$

> [!warning] Incompleto
> Escreveste apenas "$g'(x) = \ln(x^3 + 2x - 1)$" o que está errado.
> 
> **Resolução correta:**
> $g(x) = (x^3 + 2x - 1)^{1/2}$
> 
> Pela regra da cadeia:
> $$g'(x) = \frac{1}{2}(x^3 + 2x - 1)^{-1/2} \cdot (3x^2 + 2) = \frac{3x^2 + 2}{2\sqrt{x^3 + 2x - 1}}$$

---

### 6c) $h(x) = \cos(x) \cdot e^{2x}$

**Tua resposta:**
$$h'(x) = -\sin(x) \cdot e^{2x} + \cos(x) \cdot 2e^{2x}$$

> [!success] Correto
> Regra do produto bem aplicada. Podes simplificar para:
> $$h'(x) = e^{2x}(2\cos(x) - \sin(x))$$

---

## Questão 7 — Integrais Indefinidos

### 7a) $\displaystyle\int (4x^3 - 6x + 5) \, dx$

**Tua resposta:**
$$\frac{4x^4}{4} - \frac{6x^2}{2} + 5x + C = x^4 - 3x^2 + 5x + C$$

> [!success] Correto

---

### 7b) $\displaystyle\int \dfrac{6x^2}{x^3 + 4} \, dx$

**Tua resposta:**
$$2\ln(x^3 + 4) + C$$

> [!success] Correto
> Reconheceste que $(x^3 + 4)' = 3x^2$, logo $\int \frac{6x^2}{x^3+4} dx = 2\int \frac{3x^2}{x^3+4} dx = 2\ln|x^3 + 4| + C$

---

### 7c) $\displaystyle\int x \cdot \cos(x) \, dx$

**Tua resposta:**
- $u = x \Rightarrow du = dx$
- $dv = \cos(x)dx \Rightarrow v = \sin(x)$

$$\int x\cos(x)dx = x\sin(x) - \int \sin(x)dx = x\sin(x) - (-\cos(x)) = x\sin(x) + \cos(x) + C$$

> [!success] Correto
> Integração por partes perfeita!

---

## Questão 8 — Integral Definida

$$\int_{-1}^{2} (x^2 + 2x - 1) \, dx$$

**Tua resposta:**
$$\left[\frac{x^3}{3} + \frac{2x^2}{2} - x\right]_{-1}^{2} = \left[\frac{x^3}{3} + x^2 - x\right]_{-1}^{2}$$

Para $x = 2$: $\frac{8}{3} + 4 - 2 = \frac{8}{3} + 2 = \frac{8 + 6}{3} = \frac{14}{3}$

Para $x = -1$: $\frac{-1}{3} + 1 - (-1) = \frac{-1}{3} + 1 + 1 = \frac{-1}{3} + 2 = \frac{-1 + 6}{3} = \frac{5}{3}$

Resultado: $\frac{14}{3} - \frac{5}{3} = \frac{9}{3} = 3$

> [!warning] Erro de cálculo
> Obtiveste $-\frac{3}{2}$, mas vamos verificar:
> 
> Para $x = 2$: $\frac{8}{3} + 4 - 2 = \frac{8}{3} + 2 = \frac{14}{3}$
> 
> Para $x = -1$: $\frac{(-1)^3}{3} + (-1)^2 - (-1) = -\frac{1}{3} + 1 + 1 = -\frac{1}{3} + 2 = \frac{5}{3}$
> 
> Resultado: $\frac{14}{3} - \frac{5}{3} = \frac{9}{3} = 3$
> 
> **Resposta correta:** $3$

---

## Questão 9 — Primitiva com Condição Inicial

**Tua resposta:**
$$F(x) = \frac{6x^3}{3} - \frac{4x^2}{2} + C = 2x^3 - 2x^2 + C$$

$F(1) = 3$:
$$2(1)^3 - 2(1)^2 + C = 3$$
$$2 - 2 + C = 3$$
$$C = 3$$

$F(x) = 2x^3 - 2x^2 + 3$

> [!success] Correto

---

## Questão 10 — Área

$$A = \int_{-1}^{3} |(2x + 3) - x^2| \, dx$$

**Tua resposta:**
Verificaste que $y = 2x + 3$ está acima de $y = x^2$ no intervalo (correto).

$$A = \int_{-1}^{3} (2x + 3 - x^2) \, dx = \left[x^2 + 3x - \frac{x^3}{3}\right]_{-1}^{3}$$

Para $x = 3$: $9 + 9 - 9 = 9$

Para $x = -1$: $1 - 3 + \frac{1}{3} = -2 + \frac{1}{3} = -\frac{5}{3}$

Resultado: $9 - (-\frac{5}{3}) = 9 + \frac{5}{3} = \frac{27 + 5}{3} = \frac{32}{3}$

> [!danger] Erro
> Obtiveste $A = -\frac{40}{6}$, o que é impossível (área não pode ser negativa).
> 
> **Erro:** Integraste $x^2 - (2x + 3)$ em vez de $(2x + 3) - x^2$.
> 
> Como $2x + 3 > x^2$ no intervalo $[-1, 3]$ (verifica: as curvas intersectam-se em $x = -1$ e $x = 3$), a função de cima é $2x + 3$.
> 
> **Cálculo correto:**
> $$A = \int_{-1}^{3} (2x + 3 - x^2) \, dx = \left[x^2 + 3x - \frac{x^3}{3}\right]_{-1}^{3}$$
> 
> $x = 3$: $9 + 9 - 9 = 9$
> $x = -1$: $1 - 3 + \frac{1}{3} = -\frac{5}{3}$
> 
> $A = 9 - (-\frac{5}{3}) = 9 + \frac{5}{3} = \frac{32}{3}$
> 
> **Resposta correta:** $A = \frac{32}{3}$ u.a.

---

## Resumo

| Questão | Resultado | Observações |
|:-------:|:---------:|-------------|
| 1a | Correto | Domínio perfeito |
| 1b | Parcial | Interseção mal escrita |
| 2a | Correto | Fatorização OK |
| 2b | Correto | Limite no infinito OK |
| 2c | Não feito | Faltou multiplicar pelo conjugado |
| 3 | Correto | k = 4 |
| 4 | Correto | Bolzano bem aplicado |
| 5 | Parcial | AV correta, AO com erro no b final |
| 6a | Correto | Regra do quociente OK |
| 6b | Errado | Confundiste com logaritmo |
| 6c | Correto | Regra do produto OK |
| 7a | Correto | Primitiva polinomial OK |
| 7b | Correto | Reconhecimento f'/f OK |
| 7c | Correto | Por partes OK |
| 8 | Errado | Erro de cálculo |
| 9 | Correto | Condição inicial OK |
| 10 | Errado | Ordem da subtração invertida |

**Estimativa:** ~12-13/20

---

## Pontos a Trabalhar

> [!important] Prioridades
> 1. **Limite com radical** — técnica do conjugado
> 2. **Derivada de $\sqrt{f(x)}$** — não é $\ln$! É $\frac{f'(x)}{2\sqrt{f(x)}}$
> 3. **Áreas** — verificar sempre qual curva está por cima antes de subtrair
> 4. **Cálculos aritméticos** — atenção aos sinais nas substituições
