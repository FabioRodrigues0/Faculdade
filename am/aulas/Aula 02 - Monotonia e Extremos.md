Data: 
## 1. Monotonia (Crescente e Decrescente)

Diz-se que uma **função é crescente** em um inteiro de domínio $x$ para todos os números reais $a$ e $b$ desse intervalo sempre que se tem $a \leq b$ $x$ tem $f(a) \leq f(b)$

```graph
bounds: [-1, 4, 3, -1]
elements: [
  {type: functiongraph, def: ["f:x"]},
  {type: point, def: [1,1], att: {name: "f(a)"}}, 
  {type: point, def: [2,2], att: {name: "f(b)"}},
]
```

Diz-se que uma função é decrescente em um intervalo do domínio em para todos os números reais $a$ e $b$ de $x$ intervalo sempre que se tem $a \geq b$

```graph
bounds: [-1, 4, 3, -1]
elements: [
  {type: functiongraph, def: ["f:3-(1*2)*x"]},
  {type: point, def: [0.5,2], att: {name: "f(a)"}}, 
  {type: point, def: [1,1], att: {name: "f(b)"}},
]
```

Quando se diz que a função é estritamente crescente ou decrescente não significa que:

			$f(a) \gt f(b) \rightarrow \text{Decrescente(extritamente)}$
			$f(a) \lt f(b) \rightarrow \text{Crescente(extritamente)}$

Constante é quando introduzo ou aumento $x$, a imagem $y$ fica igual
