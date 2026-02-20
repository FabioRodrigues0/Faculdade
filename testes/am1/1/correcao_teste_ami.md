---
tags:
  - AMI
---

# Correção DO TESTE DE AMI - Análise Detalhada

## RESUMO GERAL
- ✓ Acertos: ~40%
- ✗ Erros/Incompletos: ~30%
- ⊗ Não respondeu: ~30%

---

## QUESTÃO 2 - DOMÍNIOS DE FUNÇÕES

### 2a) $f(x) = \frac{1}{x^2 - 4}$

**Tua resposta:** $x^2 - 4 \neq 0 \Rightarrow x \neq \pm 2$, $D_f = \mathbb{R} \setminus \{-2, 2\}$

**Estado:** ✓ **CORRETO!**

**Comentário:** Identificaste corretamente que o denominador não pode ser zero.

---

### 2b) $g(x) = \sqrt{3x - 2}$

**Tua resposta:** $3x - 2 \geq 0 \Rightarrow x \geq \frac{2}{3}$, $D_f = [\frac{2}{3}, +\infty[$

**Estado:** ✓ **CORRETO!**

**Comentário:** Perfeito! Raiz quadrada exige argumento não-negativo.

---

### 2c) $h(x) = \frac{\sqrt{2x+1}}{x-3}$

**Tua resposta:** $D_f = \mathbb{R} \setminus \{-\frac{1}{2}, 3\}$

**Estado:** ✗ **INCORRETO**

**Correção:** $D_f = [-\frac{1}{2}, 3[ \cup ]3, +\infty[$

**Explicação:**
- O numerador precisa: $2x + 1 \geq 0 \Rightarrow x \geq -\frac{1}{2}$
- O denominador precisa: $x - 3 \neq 0 \Rightarrow x \neq 3$
- Portanto: $x \geq -\frac{1}{2}$ **E** $x \neq 3$
- **NÃO se exclui o $-\frac{1}{2}$**, pois $\sqrt{0} = 0$ é permitido!

---

### 2d) $k(x) = \sqrt{-x^2 + 4x - 3}$

**Tua resposta:** Incompleto

**Estado:** ⊗ **NÃO COMPLETOU**

**Solução:**

$$\begin{align}
&-x^2 + 4x - 3 \geq 0 \\
&\Rightarrow -1 \cdot (-x^2 + 4x - 3) \leq -1 \cdot 0 \quad \text{(multiplicar por -1)} \\
&\Rightarrow x^2 - 4x + 3 \leq 0
\end{align}$$

> **📌 EXPLICAÇÃO DA MUDANÇA DE SINAL:**
> Quando **multiplicamos** ou **dividimos** uma desigualdade por um **número negativo**, temos que **inverter o sinal** da desigualdade!
> 
> Exemplo simples: $-2 < 5$ é verdade. Se multiplicarmos por $-1$: $2 > -5$ (invertemos o sinal!)

Agora fatorizar $x^2 - 4x + 3$:

$$\begin{align}
x^2 - 4x + 3 &= 0 \\
x &= \frac{4 \pm \sqrt{16 - 12}}{2} = \frac{4 \pm 2}{2} \\
x_1 &= 3, \quad x_2 = 1
\end{align}$$

> **📌 EXPLICAÇÃO DA FATORIZAÇÃO:**
> Se as raízes são $x_1 = 1$ e $x_2 = 3$, então:
> $$x^2 - 4x + 3 = (x - 1)(x - 3)$$
> 
> Podes verificar: $(x-1)(x-3) = x^2 - 3x - x + 3 = x^2 - 4x + 3$ ✓

Resolver a inequação:

$$(x - 1)(x - 3) \leq 0$$

Análise de sinal:
- Para $x < 1$: $(-)(-) = (+)$ → não serve
- Para $1 \leq x \leq 3$: $(+)(-) = (-)$ → **serve!** ✓
- Para $x > 3$: $(+)(+) = (+)$ → não serve

**Resposta:** $D_f = [1, 3]$

---

## QUESTÃO 5 - LIMITES

### 5b) $\lim_{x \to 4} \frac{\sqrt{x} - 2}{x - 4}$

**Tua resposta:** Tentaste multiplicar pelo conjugado

**Estado:** ✓ **BOA TENTATIVA!**

**Solução completa:**

$$\begin{align}
\lim_{x \to 4} \frac{\sqrt{x} - 2}{x - 4} &= \lim_{x \to 4} \frac{\sqrt{x} - 2}{x - 4} \cdot \frac{\sqrt{x} + 2}{\sqrt{x} + 2} \\
&= \lim_{x \to 4} \frac{(\sqrt{x})^2 - 2^2}{(x - 4)(\sqrt{x} + 2)} \\
&= \lim_{x \to 4} \frac{x - 4}{(x - 4)(\sqrt{x} + 2)} \\
&= \lim_{x \to 4} \frac{1}{\sqrt{x} + 2} \\
&= \frac{1}{\sqrt{4} + 2} = \frac{1}{2 + 2} = \frac{1}{4}
\end{align}$$

---

## QUESTÃO 9 - TEOREMA DE BOLZANO

### $h(x) = x^3 + x^2 + x - 2$, intervalo $]-1, 1[$

**Tua resposta:**
- $h(1) = 1 + 1 + 1 - 2 = 1$
- $h(-1) = -1 + 1 - 1 - 2 = -3$
- Sinais diferentes ⟹ existe zero no intervalo

**Estado:** ✓ **CORRETO!**

**Comentário:** Excelente! Aplicaste o Teorema de Bolzano perfeitamente.

> **Teorema de Bolzano:** Se $f$ é contínua em $[a,b]$ e $f(a) \cdot f(b) < 0$ (sinais opostos), então existe pelo menos um $c \in ]a,b[$ tal que $f(c) = 0$.

---

## QUESTÃO 13 - DERIVADAS

### 13a) $f(x) = (x - 1)(x^2 + 3x)$

**Tua resposta:** Incompleto

**Estado:** ⊗ **NÃO COMPLETOU**

**Solução (regra do produto):**

$$\begin{align}
f'(x) &= u'v + uv' \\
&= (1)(x^2 + 3x) + (x - 1)(2x + 3) \\
&= x^2 + 3x + 2x^2 + 3x - 2x - 3 \\
&= 3x^2 + 4x - 3
\end{align}$$

---

### 13d) $f(x) = x^2 e^{x^2}$

**Tua resposta:** $2x e^{x^2}$

**Estado:** ✗ **INCORRETO (incompleto)**

**Correção:**

Regra do produto: $f'(x) = u'v + uv'$

Onde:
- $u = x^2 \Rightarrow u' = 2x$
- $v = e^{x^2} \Rightarrow v' = e^{x^2} \cdot 2x$ **(regra da cadeia!)**

> **📌 REGRA DA CADEIA:**
> $$\frac{d}{dx}[e^{g(x)}] = e^{g(x)} \cdot g'(x)$$
> Neste caso: $g(x) = x^2$, então $g'(x) = 2x$

Aplicando:

$$\begin{align}
f'(x) &= 2x \cdot e^{x^2} + x^2 \cdot (e^{x^2} \cdot 2x) \\
&= 2xe^{x^2} + 2x^3e^{x^2} \\
&= 2xe^{x^2}(1 + x^2)
\end{align}$$

**ERRO:** Esqueceste-te da regra da cadeia ao derivar $e^{x^2}$!

---

### 13e) $f(x) = (1 - x^2)\ln(x)$

**Tua resposta:** $2x^{-1}$

**Estado:** ✗ **INCORRETO**

**Solução (regra do produto):**

$$\begin{align}
f'(x) &= u'v + uv' \\
&= (-2x)\ln(x) + (1 - x^2)\left(\frac{1}{x}\right) \\
&= -2x\ln(x) + \frac{1 - x^2}{x} \\
&= -2x\ln(x) + \frac{1}{x} - x
\end{align}$$

---

## QUESTÃO 14 - DERIVADA DA FUNÇÃO INVERSA

### $f(x) = 4x^3 + x + 2$, calcular $(f^{-1})'(2)$

**Tua resposta:** $f'(x) = 12x^2 + 1$, então $f'(0) = 1$

**Estado:** ✗ **INCOMPLETO**

**Solução:**

> **Fórmula da derivada da inversa:**
> $$(f^{-1})'(y_0) = \frac{1}{f'(x_0)}$$
> onde $f(x_0) = y_0$

**Passo 1:** Derivar $f(x)$
$$f'(x) = 12x^2 + 1 \quad \checkmark$$

**Passo 2:** Encontrar $x_0$ tal que $f(x_0) = 2$
$$\begin{align}
4x_0^3 + x_0 + 2 &= 2 \\
4x_0^3 + x_0 &= 0 \\
x_0(4x_0^2 + 1) &= 0 \\
\Rightarrow x_0 &= 0 \quad \text{(pois } 4x_0^2 + 1 > 0 \text{ sempre)}
\end{align}$$

**Passo 3:** Aplicar a fórmula
$$(f^{-1})'(2) = \frac{1}{f'(0)} = \frac{1}{12(0)^2 + 1} = \frac{1}{1} = 1$$

**FALTOU:** Calcular o ponto onde $f(x_0) = 2$ e depois aplicar a fórmula completa!

---

## RESUMO DE CONCEITOS IMPORTANTES

### 🔴 Regra da Cadeia
$$\frac{d}{dx}[f(g(x))] = f'(g(x)) \cdot g'(x)$$

**Exemplos:**
- $\frac{d}{dx}[e^{x^2}] = e^{x^2} \cdot 2x$
- $\frac{d}{dx}[\sin(3x)] = \cos(3x) \cdot 3$
- $\frac{d}{dx}[(x^2+1)^5] = 5(x^2+1)^4 \cdot 2x$

### 🔴 Regra do Produto
$$\frac{d}{dx}[u(x) \cdot v(x)] = u'(x)v(x) + u(x)v'(x)$$

### 🔴 Derivada da Inversa
Se $f(x_0) = y_0$, então:
$$(f^{-1})'(y_0) = \frac{1}{f'(x_0)}$$

---

## PONTOS FORTES
✓ Domínios de funções (maioria correto)  
✓ Teorema de Bolzano (muito bem!)  
✓ Conceitos básicos de limites

## ÁREAS PARA MELHORAR
✗ **Regra da cadeia** em derivadas  
✗ **Regra do produto** completa  
✗ **Derivada da função inversa** (aplicação completa)  
✗ Completar cálculos de limites  
✗ **Integrais** (não chegaste a fazer)

## PRÓXIMOS PASSOS

### 🎯 PRIORIDADE MÁXIMA:
1. **REGRA DA CADEIA** - é crucial! Erraste várias vezes
2. **REGRA DO PRODUTO** com compostas
3. **INTEGRAIS** - não fizeste nenhum!

### 📚 DEPOIS:
4. Derivada da função inversa (aplicação completa)
5. Regra de L'Hospital
6. Completar cálculos de limites com conjugados

---

## NOTA ESTIMADA
**~5-6/20** (nas que tentaste: ~60% de acerto)

⚠️ **Atenção:** Faltaram muitas questões por fazer (integrais, L'Hospital, etc.)

---

## 💡 DICAS DE ESTUDO

### Para Regra da Cadeia:
1. Identifica a função "exterior" e "interior"
2. Deriva a exterior (mantendo a interior)
3. Multiplica pela derivada da interior
4. **Nunca te esqueças deste último passo!**

### Para Domínios:
- Raiz: argumento $\geq 0$ (zero **é permitido**!)
- Denominador: $\neq 0$
- Logaritmo: argumento $> 0$ (zero **não é permitido**!)

### Para Desigualdades:
- Multiplicar/dividir por **negativo**: inverte o sinal!
- Multiplicar/dividir por **positivo**: mantém o sinal
