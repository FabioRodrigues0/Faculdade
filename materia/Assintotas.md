---
date: 10-10-2025
tags:
  - AMI
---

### Definição:
São retas que o gráfico da [[Função|função]] se aproxima mas nunca toca.

---

## 1. Assíntotas Verticais (AV)

**Equação:** $x = a$

**Quando:** Denominador = 0 e Numerador ≠ 0

**Método:**
1. Igualar denominador a zero
2. Verificar se numerador ≠ 0 nesses pontos
3. Confirmar com limites laterais

> [!warning] Se ambos são zero, simplificar primeiro!

---

## 2. Assíntotas Horizontais (AH)

**Equação:** $y = L$

**Para funções racionais — comparar graus:**

| Caso | Condição          | AH                              |
| ---- | ----------------- | ------------------------------- |
| 1    | grau(N) < grau(D) | $y = 0$                         |
| 2    | grau(N) = grau(D) | $y = \frac{\text{N}}{\text{D}}$ |
| 3    | grau(N) > grau(D) | Não há (verificar oblíqua)      |

---

## 3. Assíntotas Oblíquas (AO)

**Equação:** $y = mx + b$

**Quando:** Não há AH (grau num = grau den + 1)

**Método:**
$$m = \lim_{x \to \infty} \frac{f(x)}{x}$$
$$b = \lim_{x \to \infty} [f(x) - mx]$$

---

## Algoritmo Resumido

```
1. VERTICAL:
   - Denominador = 0?
   - Numerador ≠ 0?
   → x = a

2. HORIZONTAL (graus):
   - N < D → y = 0
   - N = D → y = coef/coef
   - N > D → Não há

3. OBLÍQUA (só se N > D):
   - m = lim f(x)/x
   - b = lim [f(x) - mx]
   → y = mx + b
```

---

## Related Topics
- [[Função]]