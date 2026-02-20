---
date: 18-02-2026
tags:
  - AMI
---

### Definição

A derivada de $f$ no ponto $a$ é o [[Limites|limite]]:
$$f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$$

Representa a **taxa de variação instantânea** (declive da [[Reta Tangente|reta tangente]]).

### Derivadas Básicas

| Função | Derivada |
| ------ | -------- |
| $k$ (constante) | $0$ |
| $x^n$ | $n \cdot x^{n-1}$ |
| $e^x$ | $e^x$ |
| $\ln(x)$ | $\frac{1}{x}$ |
| $\sin(x)$ | $\cos(x)$ |
| $\cos(x)$ | $-\sin(x)$ |

### Regras de Derivação

#### Regra do Produto
$$(f \cdot g)' = f' \cdot g + f \cdot g'$$

#### Regra do Quociente
$$\left(\frac{f}{g}\right)' = \frac{f' \cdot g - f \cdot g'}{g^2}$$

#### [[Regra da Cadeia|Regra da Cadeia]]
$$[f(g(x))]' = f'(g(x)) \cdot g'(x)$$

> [!warning] Derivadas Compostas — Não esquecer!
> - $[\ln(f(x))]' = \frac{f'(x)}{f(x)}$ ← **NÃO é** $\frac{1}{f(x)}$
> - $[e^{f(x)}]' = e^{f(x)} \cdot f'(x)$
> - $[\sqrt{f(x)}]' = \frac{f'(x)}{2\sqrt{f(x)}}$

### Aplicações

- **[[Reta Tangente|Reta tangente]]:** $y - f(a) = f'(a)(x - a)$
- **Extremos:** $f'(x) = 0$ → pontos críticos → $f''(x)$ para classificar
- **[[Ponto Inflexão|Pontos de inflexão]]:** $f''(x) = 0$

## Related Topics
- [[Integral]]
- [[Reta Tangente]]
- [[Ponto Inflexão]]
- [[Limites]]
- [[Continuidade]]
- [[Maximo]]
- [[Minimo]]
- [[Monotonia]]
- [[Concavidade]]
- [[Limites]]
- [[Regra da Cadeia]]