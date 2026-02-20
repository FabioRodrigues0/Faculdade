---
tags:
  - AMI
---

# Guia — Primitivas Básicas

## Primitivas que NÃO estão na Tabela

> [!warning] Precisas DECORAR estas!

| Primitiva | Fórmula | Macete |
|-----------|---------|--------|
| $\int x^n \, dx$ | $\frac{x^{n+1}}{n+1} + C$ | "Sobe e divide" |
| $\int k \, dx$ | $kx + C$ | Constante vezes x |
| $\int e^x \, dx$ | $e^x + C$ | Igual a si própria |
| $\int \frac{1}{x} \, dx$ | $\ln\|x\| + C$ | Logaritmo |

---

## Primitivas na Tabela (consultar)

- $\int \frac{1}{1+x^2} dx = \arctan(x) + C$
- $\int \frac{1}{\sqrt{1-x^2}} dx = \arcsin(x) + C$
- $\int \sin(x) dx = -\cos(x) + C$
- $\int \cos(x) dx = \sin(x) + C$

---

## Regra para $e^{ax}$

$$\int e^{ax} dx = \frac{e^{ax}}{a} + C$$

> [!important] Dividir pelo coeficiente de x!

**Exemplos:**
- $\int e^{2x} dx = \frac{e^{2x}}{2} + C$
- $\int e^{3x} dx = \frac{e^{3x}}{3} + C$

---

## Padrão $\frac{f'(x)}{f(x)}$

$$\int \frac{f'(x)}{f(x)} dx = \ln|f(x)| + C$$

**Exemplo:**
$$\int \frac{2x}{x^2+1} dx = \ln(x^2+1) + C$$

---

## Cartão para Colar na Tabela

```
╔═══════════════════════════════════╗
║ NÃO ESTÁ NA TABELA? DECORA!       ║
╠═══════════════════════════════════╣
║ 1. ∫x^n dx = x^(n+1)/(n+1) + C   ║
║    (sobe e divide!)               ║
║ 2. ∫k dx = kx + C                ║
║ 3. ∫e^x dx = e^x + C             ║
║ 4. ∫(1/x) dx = ln|x| + C         ║
╚═══════════════════════════════════╝
```

---

**Exercícios:** Ver [[exercicios_primitivas_decorar]]
