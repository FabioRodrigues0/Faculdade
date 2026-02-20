---
date: 19-02-2026
tags:
  - AMI
---

### Definição:
Utilizar quando tem o produto de duas possíveis [[Função|funções]] que neste caso estão representadas como $u$ e $dv$. 
#### Formula:
$$\boxed{\int u \, dv = uv - \int v \, du}$$

A ordem do $u$ e $dv$ não precisa necessariamente ser primeira função o $u$ segunda o $dv$, elas podem estar trocadas primeira ser o $dv$ segunda o $u$.
A formas de se pensar e decidir qual das funções será $u$ e o $dv$ é a seguinte, pela tabela *ILATE* vê-se de cima para baixo a função que aparecer primeiro essa será o $u$ e a outra função fica como $dv$.

| Ordem | Tipo            | Exemplo        |
| ----- | --------------- | -------------- |
| **I** | Inversas        | arctan, arcsin |
| **L** | Logarítmicas    | ln(x)          |
| **A** | Algébricas      | x, x², x³      |
| **T** | Trigonométricas | sin, cos       |
| **E** | Exponenciais    | e^x            |
Assim que foi decidido quem é o $u$ e o $dv$ aplica-se a formula. 
- Calculando o $du$ derivando $u$
- Calculando o $v$ integrando $dv$
Que é $u$ e o $v$ a se multiplicarem, que como na integral original está como sendo $dv$ quer dizer que o que lá esta a [[Derivada|derivada]] de $v$, menos a integral de $v$ multiplicado por $du$ (a derivada de $u$).
#### Quando usar Integração por partes vs Substituição:
Integração por partes deve-se usar quando na [[Integral|integral]] tem duas possíveis [[Função|funções]] a se multiplicar **exemplo**: $\int f(x) \, g(x) \, dx$, enquanto a substituição ser quando tem uma [[Função|função]] dentro de outra **exemplo**: $\int f(g(x)) \, dx$

Se pós a integração por partes a [[Integral|integral]] inicial $\int u \, dv$ e o resultado $uv - \int v \, du$ com a nova integral ainda com o produto de duas funções então é preciso voltar a se fazer a integração por partes desta vez apenas a integral presente no resultado.
## Related Topics
- [[Derivada]]
- [[Integral]]
- [[Função]]