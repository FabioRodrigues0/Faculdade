---
date: 19-02-2026
tags:
  - AMI
---

### Definição:
Utilizar quando existe uma possível função dentro de uma [[Função|função]], como:
- $\int f(g(x)) \, dx$
#### Formula para Integrais:
$$\boxed{\int f(g(x)) \cdot g'(x) \, dx = F(g(x)) + C}$$
#### Formula para Derivadas:
Em derivadas é diferente, faz-se o produto da [[Derivada]] de $f$ com o $g$ não ser alterado multiplicado pela [[Derivada]] de $g$
$$f(g(x)) = F'(g(x)) \cdot g'(x)$$

Diferente da [[Integração Por Partes|Integração por partes]] aqui a ordem é importante a de fora e sempre $f(x)$ e a de dentro é a $g(x)$.

Por vezes a [[Integral|integral]] imediata não é visível à primeira, podendo-se multiplicar e dividir para obter a [[Derivada|derivada]] interna.
**Exemplo**:
- Se na derivada de $g(x)$ existe uma constante $k$, essa constante pode passar para fora da integral
- Ao fazer isso, deve-se dividir por $k$ para compensar — assim, se derivares o resultado, voltas ao original

Em outros casos onde se pode aplicar a Substituição e quando $\dfrac{f'(x)}{f(x)}$, que neste caso especifico o resultado é sempre:
 $$\int \frac{f'(x)}{f(x)} \, dx = \ln|f(x)| + C$$
## Related Topics
- [[Função]]
- [[Integral]]
- [[Derivada]]
- [[Integração Por Partes]]