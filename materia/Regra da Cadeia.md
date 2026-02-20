---
date: 07-11-2025
tags:
  - AMI
---

### Definição:
 Se tens $f(g(x))$ ([[Função|função]] dentro de função):
$$[f(g(x))]' = f'(g(x)) \cdot g'(x)$$
Deriva a de fora, mantém a de dentro, e multiplica pela [[Derivada|derivada]] da de dentro

#### Mas existe outros casos de derivadas:

| Função                  | Derivada          |                                                                                                        |
| ----------------------- | ----------------- | ------------------------------------------------------------------------------------------------------ |
| $e^x$                   | $e^x$             | mantem-se igual.                                                                                       |
| $e^{ax}$                | $a \cdot e^{ax}$  | o $a$ ou a constante da potencia mete-se a mesma antes to $e$ a multiplicar.                           |
| $\ln(x)$                | $\dfrac{1}{x}$    | o que esta dentro do $ln$ vai para o denominador e a sua [[Derivada\|derivada]]vai para o denominador. |
| $\dfrac{1}{x} = x^{-1}$ | $-\dfrac{1}{x^2}$ | denominador passa a estar ao quadrado com fração toda passar para negativa.                            |
#### E nas [[Integral|integrais]]:


| Função         | Primitiva                       |                                                            |
| -------------- | ------------------------------- | ---------------------------------------------------------- |
| $e^x$          | $e^x + C$                       | Manter só adicionado o C                                   |
| $e^{ax}$       | $\dfrac{e^{ax}}{a} + C$         | $a$ ou o constante na potencia vai para denominador também |
| $\dfrac{1}{x}$ | $\ln(x) + C$                    | o que estiver no denominador vai para dentro do $ln$       |
| $\ln(x)$       | $x\ln(x) - x + C$ (por partes!) |                                                            |

## Related Topics
- [[Derivada]]
- [[Integral]]
- [[Função]]