---
tags:
  - AMI
---

### Intersecoes com os Eixos

#### Intersecao com o Eixo $Ox$ (Zeros)

Ocorre quando $f(x) = 0$. Procure os valores de $x$ que anulam a expressao analitica, verificando se pertencem a $\mathcal{D}_f$.

#### Intersecao com o Eixo $Oy$

Ocorre quando $x = 0$. Calcule $f(0)$, se $0 \in \mathcal{D}_f$.

---

## Monotonia de uma Funcao

A monotonia e definida comparando as imagens de dois objetos.

Seja $I \subseteq \mathcal{D}_f$ um intervalo e $x_1, x_2 \in I$ tais que $x_1 < x_2$:

### Exemplo de Prova Algebrica (dos slides)

Para $f(x) = -2x + 1$. Seja $x_1 < x_2$:

$$-2x_1 > -2x_2$$
$$-2x_1 + 1 > -2x_2 + 1$$
$$f(x_1) > f(x_2)$$

Como $x_1 < x_2 \implies f(x_1) > f(x_2)$, $f$ e **estritamente decrescente** em $\mathbb{R}$.

---

## Extremos de uma Funcao

Dada uma funcao real de variavel real $f$ e um valor $f(a)$ do contradominio de $f$, diz-se que:

### Maximo Absoluto

$f(a)$ e um **maximo absoluto** de $f$ se:

$$\forall x \in \mathcal{D}_f, \quad f(a) \geq f(x)$$

### Minimo Absoluto

$f(a)$ e um **minimo absoluto** de $f$ se:

$$\forall x \in \mathcal{D}_f, \quad f(a) \leq f(x)$$

### Maximo Relativo (Local)

$f$ atinge um **maximo relativo** em $a \in \mathcal{D}_f$ quando existe uma vizinhanca $r$ de $a$ tal que:

$$\forall x \in V_r(a) \cap \mathcal{D}_f, \quad f(a) \geq f(x)$$

Ou seja, existe um intervalo aberto $]a - \varepsilon, a + \varepsilon[$ tal que para todo $x$ nesse intervalo, $f(a) \geq f(x)$.

### Minimo Relativo (Local)

$f$ atinge um **minimo relativo** em $a \in \mathcal{D}_f$ quando existe uma vizinhanca $r$ de $a$ tal que:

$$\forall x \in V_r(a) \cap \mathcal{D}_f, \quad f(a) \leq f(x)$$

### Exemplo grafico de extremos

- $f(a)$ e $f(e)$ sao o maximo absoluto e o minimo absoluto, respetivamente
- $f(c)$ e minimo relativo e $c$ diz-se o minimizante de $f$
- $f(d)$ e $f(b)$ sao os maximos relativos e as constantes $d$ e $b$ dizem-se maximizantes de $f$

---

## Aula 3 - 6/10/25

### Exercicio: Funcao Quadratica

O grafico de uma funcao quadratica e uma parabola. Seja a funcao $f(x) = x^2 - 4x + 3$.
Indique se existe algum extremo e se este e relativo ou absoluto.

**Formula resolvente:**

$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

Com $a = 1$, $b = -4$, $c = 3$:

$$x = \frac{4 \pm \sqrt{16 - 12}}{2} = \frac{4 \pm 2}{2}$$

- $x = \frac{4+2}{2} = 3$
- $x = \frac{4-2}{2} = 1$

**Vertice da parabola:**

$$x_v = -\frac{b}{2a} = \frac{4}{2} = 2$$

$$y_v = -\frac{\Delta}{4a} = -\frac{4}{4} = -1$$

**$P(2, -1)$** → Ponto minimo absoluto

**Concavidade:** Para $f(x) = ax^2 + bx + c$:
- $a > 0$ → concavidade para cima ($\cup$) → tem **minimo**
- $a < 0$ → concavidade para baixo ($\cap$) → tem **maximo**

**Discriminante:** $\Delta = b^2 - 4ac$


---

### Exercicio: Grafico da funcao definida no intervalo $]-6, 6[$

#### a) Intervalos de crescimento e decrescimento

**Estritamente crescente:** $]-6, -3[ \;\cup\; ]5, 6[$

**Estritamente decrescente:** $]-3, 2[$

#### b) Onde a funcao e nula (zeros)

(Tambem chamado de zero da funcao, abcissa ou raiz da funcao)

- $x = -5 \to P(-5, 0)$
- $x = -2 \to P(-2, 0)$
- $x = 5 \to P(5, 0)$

#### c) Onde a funcao e positiva e negativa

$$f(x) \geq 0: \; [-5, -2] \cup [5, 6[$$
$$f(x) \leq 0: \; ]-6, -5] \cup [-2, 5]$$

- $f(x) > 0$ → acima do eixo $Ox$
- $f(x) < 0$ → abaixo do eixo $Ox$

#### d) Valores extremos

- $(-3, 2)$ → Ponto de **maximo absoluto**
- $(2, -3)$ → Ponto de **minimo absoluto**

---

## Ponto de Inflexao

E importante destacar que tambem podemos chamar de **ponto critico** aos pontos que incluem candidatos a maximos, minimos locais, ou mesmo pontos de inflexao.

**Ponto de inflexao:** E um ponto da curva onde a concavidade da funcao muda, ou seja, a funcao passa de concava para cima para concava para baixo ou vice-versa.

Portanto, ponto de transicao e ponto critico nao sao sinonimos:
- O **ponto de transicao** (extremos: max., min., ou ponto anguloso) e um ponto da curva onde a funcao e continua (limites laterais sao iguais, mas a derivada nao existe porque as derivadas laterais sao diferentes).
- O **ponto de inflexao** nao tem max. nem minimo — a concavidade muda.

Nem todo ponto critico e necessariamente um extremo.

---

## Propriedades: Paridade

Condicao necessaria: Se $x \in \mathcal{D}_f$, entao $-x \in \mathcal{D}_f$ (dominio simetrico em relacao a origem).

### Funcao Par

$$f(-x) = f(x), \quad \forall x \in \mathcal{D}_f$$

O grafico e simetrico em relacao ao eixo $Oy$.

### Funcao Impar

$$f(-x) = -f(x), \quad \forall x \in \mathcal{D}_f$$

O grafico e simetrico em relacao a origem $(0, 0)$.

### Exemplos de Paridade

**1.** $f(x) = 5x^4 - x^2$

$$f(-x) = 5(-x)^4 - (-x)^2 = 5x^4 - x^2 = f(x) \implies \text{PAR}$$

**2.** $h(x) = x^3 + 1$

$$h(-x) = (-x)^3 + 1 = -x^3 + 1$$

Como $h(-x) \neq h(x)$ e $h(-x) \neq -h(x)$, $h$ e **nem par nem impar**.

### Exercicio Pratico (dos slides)

**1.** Prove que $f(x) = x^2$ e estritamente decrescente em $]-\infty, 0]$.

Seja $x_1, x_2 \in ]-\infty, 0]$ com $x_1 < x_2 < 0$.
- Multiplicando por $x_1$ (negativo): $x_1^2 > x_1 x_2$
- Multiplicando por $x_2$ (negativo): $x_1 x_2 > x_2^2$
- Por transitividade: $x_1^2 > x_2^2 \implies f(x_1) > f(x_2)$ → $f$ e **estritamente decrescente**.

**2.** Verifique a paridade de $g(x) = \frac{|x|}{x^2 + 1}$.

$$g(-x) = \frac{|-x|}{(-x)^2 + 1} = \frac{|x|}{x^2 + 1} = g(x) \implies \text{PAR}$$

---

## Funcao Inversa ($f^{-1}$)

Uma funcao $f$ so admite **funcao inversa** $f^{-1}$ se for **injetiva** no seu dominio.

### Propriedades de $f^{-1}$

- O dominio de $f^{-1}$ e o contradominio de $f$: $\mathcal{D}_{f^{-1}} = \mathcal{CD}_f$
- O contradominio de $f^{-1}$ e o dominio de $f$: $\mathcal{CD}_{f^{-1}} = \mathcal{D}_f$
- O grafico de $f^{-1}$ e simetrico ao de $f$ relativamente a reta $y = x$

### Algoritmo para Calcular a Inversa

Seja $f(x)$ uma funcao injetiva. Para determinar $f^{-1}(x)$:

1. Escreva a funcao na forma $y = f(x)$
2. Isole a variavel $x$ em funcao de $y$
3. Troque as variaveis $x$ por $y$ e $y$ por $x$

### Exemplo: $f(x) = 3x - 5$

$$y = 3x - 5 \implies y + 5 = 3x \implies x = \frac{y+5}{3}$$

$$f^{-1}(x) = \frac{x+5}{3}$$

Verificacao: $(f \circ f^{-1})(x) = f\left(\frac{x+5}{3}\right) = 3 \cdot \frac{x+5}{3} - 5 = x$ ✓

### Funcao Exponencial e Logaritmica (Inversas)

$$f(x) = e^x \implies f^{-1}(x) = \ln(x)$$

$$y = e^x \iff x = \ln(y)$$

**O inverso de $e^x$ e $\ln$.**

Outro exemplo:
- $f(x) = 2^x \implies f^{-1}(x) = \log_2(x)$

**Dominios:**
- $\mathcal{D}_f = \mathbb{R}$, $\mathcal{D}_{f^{-1}} = \mathbb{R}^+$
- $\mathcal{CD}_f = \mathbb{R}^+$, $\mathcal{CD}_{f^{-1}} = \mathbb{R}$

### Exercicio Pratico: $h(x) = \frac{2x}{x-1}$

**1. Dominio:** $x - 1 \neq 0 \implies \mathcal{D}_h = \mathbb{R} \setminus \{1\}$

**Contradominio:** Isolando $x$:

$$y(x-1) = 2x \implies yx - y = 2x \implies x(y-2) = y \implies x = \frac{y}{y-2}$$

$$\mathcal{CD}_h = \mathbb{R} \setminus \{2\}$$

**2. Inversa:**

$$h^{-1}(x) = \frac{x}{x - 2}$$

$$\mathcal{D}_{h^{-1}} = \mathbb{R} \setminus \{2\} = \mathcal{CD}_h$$

---

## Aula 4 - 9/10/25 - Limites

### Limites Laterais

$$\lim_{x \to a^+} f(x) = l \quad \text{(pela direita)}$$

$$\lim_{x \to a^-} f(x) = l \quad \text{(pela esquerda)}$$

Quando os dois limites laterais sao iguais → **existe limite**.

### Teorema (Algebra de Limites)

$$\lim_{x \to a} [c \cdot f(x)] = c \cdot \lim_{x \to a} f(x)$$

### Teorema (Limites fundamentais)

Sao constantes quando os limites sao zero.

### Indeterminacoes Comuns

#### Tipo $\frac{0}{0}$

$$\lim_{x \to 0^+} \frac{x^2 + x}{x^2} = \lim_{x \to 0^+} \frac{x(x+1)}{x^2} = \lim_{x \to 0^+} \frac{x+1}{x} = \frac{1}{0^+} = +\infty$$

#### Tipo $\frac{\infty}{\infty}$

$$\lim_{x \to +\infty} \frac{x^2 + x}{x^2} = \lim_{x \to +\infty} \frac{x^2(1 + \frac{1}{x})}{x^2} = \lim_{x \to +\infty} \left(1 + \frac{1}{x}\right) = 1 + 0 = 1$$

### Casos Notaveis

$$(a - b)^2 = a^2 - 2ab + b^2$$
$$(a^2 - b^2) = (a-b)(a+b)$$

### Regra de Cauchy (L'Hopital)

Quando encontramos uma indeterminacao $\frac{0}{0}$ ou $\frac{\infty}{\infty}$, podemos derivar numerador e denominador:

$$\lim_{x \to a} \frac{f(x)}{g(x)} = \lim_{x \to a} \frac{f'(x)}{g'(x)}$$

### Exemplo: Limite trigonometrico

$$\lim_{x \to 0} \frac{\sin x}{x} = \lim_{x \to 0} \frac{(\sin x)'}{(x)'} = \lim_{x \to 0} \frac{\cos x}{1} = 1$$

### Exemplo 2.1

$$\lim_{x \to 0} \frac{\sin(2x)}{x} = \lim_{x \to 0} \frac{2 \sin(2x)}{2x} = 2 \times 1 = 2$$

### Exemplo 3: Limite no infinito

$$\lim_{x \to \infty} \frac{3x^2 + 5x + 1}{2x^2 - x}$$

Dividindo numerador e denominador por $x^2$:

$$= \lim_{x \to \infty} \frac{3 + \frac{5}{x} + \frac{1}{x^2}}{2 - \frac{1}{x}} = \frac{3 + 0 + 0}{2 - 0} = \frac{3}{2}$$

**Outra forma:** com $\frac{\infty}{\infty}$, pode-se usar os termos de maior grau:

$$\lim_{x \to \infty} \frac{3x^2}{2x^2} = \frac{3}{2}$$

### Exemplo 4: $\lim_{x \to 0^+} x \cdot \ln(x)$

Indeterminacao $0 \times (-\infty)$.

**Mudanca de variavel:** $y = \frac{1}{x} \iff x = \frac{1}{y}$, quando $x \to 0^+$, $y \to +\infty$

$$\lim_{x \to 0^+} x \ln(x) = \lim_{y \to +\infty} \frac{1}{y} \cdot \ln\left(\frac{1}{y}\right) = \lim_{y \to +\infty} \frac{-\ln(y)}{y} = 0$$

(Aplicando o limite notavel $\lim_{y \to +\infty} \frac{\ln(y)}{y} = 0$)

---

## Assintotas

### Assintotas Verticais (para valores de $x$)

Se $\lim_{x \to a^+} f(x) = \pm\infty$ ou $\lim_{x \to a^-} f(x) = \pm\infty$, entao $x = a$ e uma **assintota vertical**.

#### Exemplo: $f(x) = \frac{2}{x+2}$

$$\mathcal{D}_f = \mathbb{R} \setminus \{-2\}$$

$$\lim_{x \to -2^+} \frac{2}{x+2} = \frac{2}{0^+} = +\infty$$

$$\lim_{x \to -2^-} \frac{2}{x+2} = \frac{2}{0^-} = -\infty$$

**$x = -2$ e assintota vertical.**

### Assintotas Horizontais (para valores de $y$)

$$\lim_{x \to +\infty} f(x) = L \quad \text{ou} \quad \lim_{x \to -\infty} f(x) = L \implies y = L \text{ e assintota horizontal}$$

#### Exemplo (continuacao):

$$\lim_{x \to +\infty} \frac{2}{x+2} = 0 \qquad \lim_{x \to -\infty} \frac{2}{x+2} = 0$$

**$y = 0$ e assintota horizontal.**

### Assintotas Obliquas

$$y = mx + b$$

**Para determinar:**

$$m = \lim_{x \to +\infty} \frac{f(x)}{x} \qquad b = \lim_{x \to +\infty} [f(x) - mx]$$

**Ordem de resolucao:**
1. Calcular assintota vertical
2. Calcular assintota obliqua
3. So se necessario, calcular assintota horizontal

#### Exercicio: $f(x) = \frac{x^2 + 3x + 1}{x - 1}$

**Dominio:** $\mathcal{D}_f = \mathbb{R} \setminus \{1\}$

**Assintota Vertical:**

$$\lim_{x \to 1^+} \frac{x^2 + 3x + 1}{x - 1} = \frac{5}{0^+} = +\infty$$

$$\lim_{x \to 1^-} \frac{x^2 + 3x + 1}{x - 1} = \frac{5}{0^-} = -\infty$$

**$x = 1$ e assintota vertical.**

**Assintota Obliqua:**

$$m = \lim_{x \to +\infty} \frac{f(x)}{x} = \lim_{x \to +\infty} \frac{x^2 + 3x + 1}{x(x-1)} = \lim_{x \to +\infty} \frac{x^2 + 3x + 1}{x^2 - x} = 1$$

$$b = \lim_{x \to +\infty} [f(x) - x] = \lim_{x \to +\infty} \frac{x^2 + 3x + 1 - x(x-1)}{x-1} = \lim_{x \to +\infty} \frac{4x + 1}{x - 1} = 4$$

$$y = x + 4 \quad \text{→ Assintota Obliqua}$$

(Se existe assintota obliqua, nao existe assintota horizontal.)

---

## Exercicios de Limites (para resolver)

**(1) Calcule os seguintes limites, caso existam:**

**a)** $\displaystyle\lim_{x \to -\infty} [(2x + 3) \cdot x^2] =$

**b)** $\displaystyle\lim_{x \to 1} \frac{3}{4 - x} =$

**c)** $\displaystyle\lim_{x \to +\infty} (\sqrt{x+1} - \sqrt{x}) =$

**d)** $\displaystyle\lim_{x \to +\infty} \frac{2x^3 + 1}{x^2 + x} =$

---

## Exercicio Global (dos slides, para resolver)

Considere a funcao $k(x) = 1 - \sqrt{x + 4}$.

1. Calcule o dominio $\mathcal{D}_k$.
2. Determine os zeros de $k$.
3. Analise a monotonia de $k$.
4. Determine o contradominio $\mathcal{CD}_k$ e a funcao inversa $k^{-1}(x)$.

**Dica:** Para a monotonia, comece com $x_1 < x_2$. Para o contradominio e a inversa, isole $\sqrt{x+4}$ e eleve ao quadrado, mas atencao ao dominio/contradominio!
