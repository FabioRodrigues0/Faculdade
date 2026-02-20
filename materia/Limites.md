---
date: 10-10-2025
tags:
  - AMI
---

### Definição:
O **limite** de uma [[Função|função]] $f(x)$ quando $x$ tende para $a$ é o valor $L$ para o qual $f(x)$ se aproxima à medida que $x$ se aproxima de $a$.

$$\lim_{x \to a} f(x) = L$$

---

## Limites Laterais

### Limite à direita ($x \to a^+$)
$$\lim_{x \to a^+} f(x) = L$$
Valores de $x$ maiores que $a$ a aproximar-se de $a$.

### Limite à esquerda ($x \to a^-$)
$$\lim_{x \to a^-} f(x) = L$$
Valores de $x$ menores que $a$ a aproximar-se de $a$.

> [!important] Existência do limite
> O limite existe se e só se os limites laterais são **iguais**:
> $$\lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = L$$

---

## Propriedades (Álgebra de Limites)

Se $\lim_{x \to a} f(x) = L$ e $\lim_{x \to a} g(x) = M$, então:

| Operação | Resultado |
|----------|-----------|
| $\lim [f(x) + g(x)]$ | $L + M$ |
| $\lim [f(x) - g(x)]$ | $L - M$ |
| $\lim [f(x) \cdot g(x)]$ | $L \cdot M$ |
| $\lim \dfrac{f(x)}{g(x)}$ | $\dfrac{L}{M}$ (se $M \neq 0$) |
| $\lim [c \cdot f(x)]$ | $c \cdot L$ |

---

## Indeterminações

São expressões cujo valor não é determinável diretamente:

| Indeterminação | Métodos de resolução |
|----------------|---------------------|
| $\dfrac{0}{0}$ | Fatorizar, conjugado, L'Hôpital |
| $\dfrac{\infty}{\infty}$ | Dividir por maior grau, L'Hôpital |
| $0 \cdot \infty$ | Reescrever como fração |
| $\infty - \infty$ | Colocar em evidência, conjugado |
| $1^\infty$, $0^0$, $\infty^0$ | Usar logaritmos |

---

## Técnicas de Resolução

### 1. Fatorização (para $\frac{0}{0}$)

$$\lim_{x \to 3} \frac{x^2 - 9}{x - 3} = \lim_{x \to 3} \frac{(x-3)(x+3)}{x-3} = \lim_{x \to 3} (x+3) = 6$$

### 2. Dividir pelo maior grau (para $\frac{\infty}{\infty}$)

$$\lim_{x \to \infty} \frac{3x^2 + 5x}{2x^2 - 1} = \lim_{x \to \infty} \frac{3 + \frac{5}{x}}{2 - \frac{1}{x^2}} = \frac{3}{2}$$

**Atalho:** Comparar graus do numerador (N) e denominador (D):
- grau(N) < grau(D) → limite = 0
- grau(N) = grau(D) → limite = $\frac{\text{coef. líder N}}{\text{coef. líder D}}$
- grau(N) > grau(D) → limite = $\pm\infty$

### 3. Multiplicar pelo conjugado (radicais)

$$\lim_{x \to 0} \frac{\sqrt{1+x} - 1}{x} = \lim_{x \to 0} \frac{(\sqrt{1+x}-1)(\sqrt{1+x}+1)}{x(\sqrt{1+x}+1)}$$
$$= \lim_{x \to 0} \frac{1+x-1}{x(\sqrt{1+x}+1)} = \lim_{x \to 0} \frac{1}{\sqrt{1+x}+1} = \frac{1}{2}$$

### 4. Regra de L'Hôpital (para $\frac{0}{0}$ ou $\frac{\infty}{\infty}$)

$$\lim_{x \to a} \frac{f(x)}{g(x)} = \lim_{x \to a} \frac{f'(x)}{g'(x)}$$

> [!warning] Só usar se der indeterminação!

---

## Limites Notáveis

$$\lim_{x \to 0} \frac{\sin(x)}{x} = 1$$

$$\lim_{x \to \infty} \left(1 + \frac{1}{x}\right)^x = e$$

$$\lim_{x \to 0} \frac{e^x - 1}{x} = 1$$

$$\lim_{x \to \infty} \frac{\ln(x)}{x} = 0$$

---

## Limites e [[Assintotas]]

- **Assíntota Vertical:** $\lim_{x \to a} f(x) = \pm\infty$
- **Assíntota Horizontal:** $\lim_{x \to \pm\infty} f(x) = L$
- **Assíntota Oblíqua:** Ver [[Assintotas]]

---

## Related Topics
- [[Continuidade]]
- [[Assintotas]]
- [[Função]]
