---
date: 03-11-2025
tags:
  - AMI
---

### Definição:

A **reta tangente** ao gráfico de $f$ num ponto toca o gráfico nesse ponto e tem o mesmo "declive" que a curva.

```desmos-graph
left=-1; right=5;
top=6; bottom=-1;
---
f(x)=x^2-2x+2|blue
y=2(x-2)+2|red|label:reta tangente
(2,2)|blue|label:P(2,f(2))
```
A vermelho vê-se a reta tangente uma reta que passa mesmo pelo um ponto da [[Função|função]] neste caso a azul.
#### Formula:
$$\boxed{y - y_0 = m(x - x_0)}$$
Onde:
- $(x_0, y_0)$ é o ponto de tangência
- $m = f'(x_0)$ é o **declive** ([[Derivada|derivada]] no ponto)

#### Ordem de procedimentos para identificar:
1. Ponto: Calcular $y₀ = f(x₀)$
2. Declive: Calcular $m = f'(x₀)$
3. Reta Tangente: $y = mx + (y₀ - mx₀)$
## Related Topics
- [[Função]]