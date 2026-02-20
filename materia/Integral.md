---
date: 18-02-2026
tags:
  - AMI
---

### Definição:
Seja $I$ um intervalo não degenerado(isto é, contem mais que um ponto) e $f: I \to \mathbb{R}$.
Dizemos que $F$ é uma primitiva de $f$ se $F'(x) = f(x), \forall x \in I$
[[calculo_integral_parte1.pdf#page=3|calculo_integral_parte1, p.3]]

#### Nota:
Se  $I = [a,b]$ com $a \lt b$ quer dizer que F é diferenciável em $I=[a,b]$ e também quer dizer que $F$ é diferenciável em $]a,b[$ e que $F'(a) \space e \space F'(b)$ existem e são finitos. 

#### Integrais Imediato

| Integral                                      | Primitiva                            |
| --------------------------------------------- | ------------------------------------ |
| $\int \frac{1}{1+x²} \space dx$               | $\arctan{(x)} + C$                   |
| $\int \frac{1}{\sqrt{1-x²}} \space dx$        | $\arcsin(x) + C$                     |
| $\int \frac{-1}{\sqrt{1-x²}} \space dx$       | $\arccos(x) + C$                     |
| $\int \frac{f'(x)}{1+f(x)²} \space dx$        | $\arctan(f(x)) + C$                  |
| $\int \frac{f'(x)}{\sqrt{1-f(x)²}} \space dx$ | $\arcsin(f(x)) + C$                  |
| $\int \sin{(ax)} \space dx$                   | $-\frac{1}{a}\cos(ax) + C$           |
| $\int \cos{(ax)} \space dx$                   | $\frac{1}{a}\sin(ax) + C$            |
| $\int \sin{(f(x))}f'(x) \space dx$            | $-\cos(f(x))+ C$                     |
| $\int \cos{(f(x))}f'(x) \space dx$            | $\sin(f(x))+ C$                      |
| $\int \sin²{(x)} \space dx$                   | $\frac{x}{2}-\frac{\sin(2x)}{4} + C$ |
| $\int \cos²{(x)} \space dx$                   | $\frac{x}{2}+\frac{\sin(2x)}{4} + C$ |
| $\int \tan{(x)} \space dx$                    | $-\ln\|\cos(x)\|+ C$                 |
| $\int \frac{1}{\cos²{(x)}} \space dx$         | $\tan(x)+ C$                         |
| $\int \frac{1}{x} \space dx$                  | $\ln\|x\| + C$                       |

#### Primitivas para Decorar (não estão na tabela!)

| Integral | Primitiva |
| -------- | --------- |
| $\int x^n \, dx$ | $\frac{x^{n+1}}{n+1} + C$ |
| $\int k \, dx$ | $kx + C$ |
| $\int e^x \, dx$ | $e^x + C$ |
| $\int e^{ax} \, dx$ | $\frac{e^{ax}}{a} + C$ |

#### Padrão f'/f (importante!)

$$\int \frac{f'(x)}{f(x)} \, dx = \ln|f(x)| + C$$

> [!warning] Atenção
> Se o numerador **já é** a derivada do denominador, não multiplicar por mais nada!

## Related Topics
- [[Derivada]]
- [[calculo_integral_parte1.pdf]]
- [[calculo_integral_parte2.pdf]]
- [[Regra da Cadeia]]