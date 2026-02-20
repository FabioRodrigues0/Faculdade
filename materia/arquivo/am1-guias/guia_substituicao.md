---
tags:
  - AMI
---
# Guia — Integração por Substituição

## Fórmula

$$\boxed{\int f(g(x)) \cdot g'(x) \, dx = F(g(x)) + C}$$

Onde $F$ é a primitiva de $f$.

---

## Quando Usar?

Usar quando tens uma **função dentro de outra** (função composta):
- $\int f(g(x)) \, dx$

> [!tip] Como identificar?
> Procura algo "encaixado" dentro de outra função — o argumento não é simplesmente $x$.

---

## Algoritmo

```
1. IDENTIFICAR a função interna g(x)
2. SUBSTITUIR: u = g(x)
3. CALCULAR: du = g'(x) dx
4. AJUSTAR constantes se necessário (ver secção abaixo)
5. RESOLVER o integral em termos de u
6. REVERTER: substituir u de volta para g(x)
```

---

## Ajuste de Constantes

Se na integral tens $k \cdot g'(x)$ mas precisas de $a \cdot g'(x)$:

$$\int k \cdot f(g(x)) \, dx = \frac{k}{a} \int a \cdot f(g(x)) \, dx$$

> [!important] Regra
> Multiplica e divide para obter **exatamente** a derivada da função interna.

---

## Padrão Especial: $\dfrac{f'(x)}{f(x)}$

$$\int \frac{f'(x)}{f(x)} \, dx = \ln|f(x)| + C$$

Quando o numerador é a derivada do denominador, o resultado é o logaritmo do denominador.

---

## Comparação: Substituição vs Por Partes

| Padrão | Método | Porquê |
|:-------|:-------|:-------|
| $\int f(x) \cdot g(x) \, dx$ | Por partes | Produto de funções diferentes |
| $\int f(g(x)) \, dx$ | Substituição | Função composta (uma dentro da outra) |

---
## Erros Comuns

> [!warning] Não esquecer!
> - Ajustar as constantes quando $g'(x)$ não aparece exatamente na integral
> - No final, **voltar para $x$** — o resultado não pode ficar em termos de $u$

---

**Ver também:** [[guia_integracao_partes]]
