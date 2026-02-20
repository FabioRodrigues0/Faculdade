---
date: 24-11-2025
tags:
  - AMI
---

### Definição:
A **concavidade** de uma [[Função|função]] indica para que lado a curva "dobra". É determinada pela segunda derivada $f''(x)$.

```desmos-graph
left=-3; right=5;
top=10; bottom=-2;
---
y=x^2|blue|label:côncava cima
y=-x^2+8|red|label:côncava baixo
```

---

## Tipos de Concavidade

### Côncava para cima ($\cup$)
$$f''(x) > 0$$
A curva tem forma de "U" — segura água.

> [!tip] Memória
> $f'' > 0$ → "sorriso" → côncava para **cima** → tem [[Minimo|mínimo]]

### Côncava para baixo ($\cap$)
$$f''(x) < 0$$
A curva tem forma de "∩" — deixa cair água.

> [!tip] Memória
> $f'' < 0$ → "triste" → côncava para **baixo** → tem [[Maximo|máximo]]

---

## Relação com Extremos

A concavidade permite classificar pontos críticos (onde $f'(x) = 0$):

| $f''(x_c)$ | Concavidade | Tipo de extremo |
|------------|-------------|-----------------|
| $f''(x_c) > 0$ | Para cima $\cup$ | **Mínimo** |
| $f''(x_c) < 0$ | Para baixo $\cap$ | **Máximo** |
| $f''(x_c) = 0$ | Inconclusivo | Pode ser [[Ponto Inflexão]] |

---

## [[Ponto Inflexão]]

É onde a concavidade **muda** (de $\cup$ para $\cap$ ou vice-versa).

**Como encontrar:**
1. Calcular $f''(x) = 0$
2. Verificar se há **mudança de sinal** de $f''(x)$

---

## Exemplo Completo

Seja $f(x) = x^3 - 3x^2 + 2$

**Passo 1:** Derivadas
$$f'(x) = 3x^2 - 6x$$
$$f''(x) = 6x - 6$$

**Passo 2:** Concavidade
$$f''(x) = 0 \Rightarrow 6x - 6 = 0 \Rightarrow x = 1$$

| Intervalo | $f''(x)$ | Concavidade |
|-----------|----------|-------------|
| $x < 1$ | $f''(0) = -6 < 0$ | Para baixo $\cap$ |
| $x > 1$ | $f''(2) = 6 > 0$ | Para cima $\cup$ |

**Passo 3:** Ponto de inflexão
Em $x = 1$: $f(1) = 1 - 3 + 2 = 0$

**Ponto de inflexão:** $(1, 0)$

---

## Para Parábolas ($f(x) = ax^2 + bx + c$)

A concavidade é constante e depende apenas de $a$:

| Coeficiente $a$ | Concavidade | Extremo |
|-----------------|-------------|---------|
| $a > 0$ | Para cima $\cup$ | Mínimo (vértice) |
| $a < 0$ | Para baixo $\cap$ | Máximo (vértice) |

---

## Resumo Visual

```
f''(x) > 0          f''(x) < 0          f''(x) = 0
    ∪                   ∩               possível
côncava cima      côncava baixo      ponto inflexão
  MÍNIMO            MÁXIMO           (verificar!)
```

---

## Related Topics
- [[Ponto Inflexão]]
- [[Maximo]]
- [[Minimo]]
- [[Reta Tangente]]
