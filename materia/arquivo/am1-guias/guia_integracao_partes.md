---
tags:
  - AMI
---
# Guia — Integração por Partes


## Fórmula

$$\boxed{\int u \, dv = uv - \int v \, du}$$

---

## Quando Usar?

Usar quando tens um **PRODUTO** de duas funções:
- $\int x \cdot e^x dx$
- $\int x \cdot \cos(x) dx$
- $\int \ln(x) dx$ (reescrever como $\int 1 \cdot \ln(x) dx$)

> [!error] NÃO podes separar produtos como somas!
> $$\int x \cdot \cos(x) dx \neq \int x dx + \int \cos(x) dx$$

---

## Regra ILATE — Como escolher u

Escolhe $u$ pela **PRIMEIRA** que aparecer:

| Ordem | Tipo | Exemplo |
|-------|------|---------|
| **I** | Inversas | arctan, arcsin |
| **L** | Logarítmicas | ln(x) |
| **A** | Algébricas | x, x², x³ |
| **T** | Trigonométricas | sin, cos |
| **E** | Exponenciais | e^x |

O resto fica como $dv$.

---

## Algoritmo

```
1. IDENTIFICAR produto
2. ESCOLHER u (ILATE) e dv
3. CALCULAR du (derivar u) e v (integrar dv)
4. APLICAR: ∫u dv = uv - ∫v du
5. RESOLVER o novo integral
6. Às vezes: repetir!
```

---

## Exemplos Rápidos

| Integral | u | dv | Resultado |
|----------|---|----|----|
| $\int x e^x dx$ | $x$ | $e^x dx$ | $e^x(x-1) + C$ |
| $\int x \cos(x) dx$ | $x$ | $\cos dx$ | $x\sin(x) + \cos(x) + C$ |
| $\int \ln(x) dx$ | $\ln(x)$ | $dx$ | $x\ln(x) - x + C$ |

---

## Erro Comum: Fator em $e^{ax}$

> [!warning] Lembrar: $\int e^{ax} dx = \frac{e^{ax}}{a} + C$

**Exemplo com $\int x e^{2x} dx$:**
- $u = x$, $dv = e^{2x}dx$
- $v = \frac{e^{2x}}{2}$ (NÃO $e^{2x}$!)

---

**Exercícios:** Ver [[exercicios_por_partes]]
