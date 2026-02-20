# Regra do Quociente

> [!info] Quando usar?
> Quando tens uma **fração** com $x$ **em cima E em baixo**.
> Exemplo: $\dfrac{x^2 + 1}{x - 3}$

---

## Fórmula

$$\left(\frac{f}{g}\right)' = \frac{f' \cdot g - f \cdot g'}{g^2}$$

> [!tip] Mnemónica para decorar
> **"Deriva cima vezes baixo, menos cima vezes deriva baixo, tudo sobre baixo ao quadrado"**
> 
> Ou mais curto: **"d.baixo - baixo.d, sobre baixo²"**
> 
> $$\frac{\text{(deriva cima)} \times \text{baixo} - \text{cima} \times \text{(deriva baixo)}}{\text{(baixo)}^2}$$

---

## Passo a passo

1. **Identificar** $f$ (numerador) e $g$ (denominador)
2. **Calcular** $f'$ e $g'$ separadamente
3. **Aplicar** a fórmula: $f' \cdot g - f \cdot g'$
4. **Dividir** por $g^2$
5. **Simplificar** se possível

---

## Exemplos resolvidos

### Exemplo 1: $\dfrac{x^2 + 1}{x - 3}$

> [!example] Resolução
> **Passo 1:** Identificar
> - $f = x^2 + 1$
> - $g = x - 3$
> 
> **Passo 2:** Derivar cada parte
> - $f' = 2x$
> - $g' = 1$
> 
> **Passo 3:** Aplicar fórmula
> $$\frac{f' \cdot g - f \cdot g'}{g^2} = \frac{2x \cdot (x-3) - (x^2+1) \cdot 1}{(x-3)^2}$$
> 
> **Passo 4:** Expandir e simplificar
> $$= \frac{2x^2 - 6x - x^2 - 1}{(x-3)^2} = \frac{x^2 - 6x - 1}{(x-3)^2}$$

---

### Exemplo 2: $\dfrac{2x}{x^2 + 1}$

> [!example] Resolução
> - $f = 2x \Rightarrow f' = 2$
> - $g = x^2 + 1 \Rightarrow g' = 2x$
> 
> $$\frac{2 \cdot (x^2+1) - 2x \cdot 2x}{(x^2+1)^2} = \frac{2x^2 + 2 - 4x^2}{(x^2+1)^2} = \frac{2 - 2x^2}{(x^2+1)^2}$$
> 
> Simplificando: $\dfrac{2(1 - x^2)}{(x^2+1)^2}$

---

### Exemplo 3: $\dfrac{x^3 - 1}{x + 2}$

> [!example] Resolução
> - $f = x^3 - 1 \Rightarrow f' = 3x^2$
> - $g = x + 2 \Rightarrow g' = 1$
> 
> $$\frac{3x^2 \cdot (x+2) - (x^3-1) \cdot 1}{(x+2)^2} = \frac{3x^3 + 6x^2 - x^3 + 1}{(x+2)^2} = \frac{2x^3 + 6x^2 + 1}{(x+2)^2}$$

---

### Exemplo 4: $\dfrac{e^x}{x}$

> [!example] Resolução
> - $f = e^x \Rightarrow f' = e^x$
> - $g = x \Rightarrow g' = 1$
> 
> $$\frac{e^x \cdot x - e^x \cdot 1}{x^2} = \frac{e^x(x - 1)}{x^2}$$

---

## Regra do Quociente vs Regra da Cadeia

> [!warning] Não confundir!
> 
> | Situação | Regra a usar |
> |----------|--------------|
> | $\dfrac{f(x)}{g(x)}$ — fração com x em cima e baixo | **Quociente** |
> | $f(g(x))$ — função dentro de função | **Cadeia** |
> | $(x^2 + 1)^4$ — potência de expressão | **Cadeia** |
> | $\dfrac{1}{x^2 + 1}$ — só x em baixo | **Cadeia** (reescrever como $(x^2+1)^{-1}$) |

---

## Exercícios para praticar

**1.** Derive: $h(x) = \dfrac{x^2 - 4}{x + 1}$

> [!note]- Espaço para resposta

**2.** Derive: $f(x) = \dfrac{3x + 1}{2x - 5}$

> [!note]- Espaço para resposta

**3.** Derive: $g(x) = \dfrac{x^2}{x^3 + 1}$

> [!note]- Espaço para resposta

**4.** Derive: $y = \dfrac{\ln(x)}{x}$

> [!note]- Espaço para resposta
