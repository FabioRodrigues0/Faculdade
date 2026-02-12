# 📐 ASSÍNTOTAS DO ZERO - Guia Completo

## 🎯 O QUE SÃO ASSÍNTOTAS? (Conceito Intuitivo)

> **Assíntota** é uma **reta** que o gráfico da função se aproxima cada vez mais, mas **nunca toca** (ou toca apenas num ponto).

### 🖼️ Analogia Visual

Imagina que estás a conduzir numa estrada:
- A **linha branca** ao lado da estrada é como uma assíntota
- O teu carro aproxima-se cada vez mais da linha mas nunca a toca
- Quanto mais longe vais, mais perto ficas da linha

**Assíntotas são as "linhas limite" do gráfico!**

---

## 📊 TIPOS DE ASSÍNTOTAS

Existem **3 tipos** de assíntotas:

| Tipo | Equação | Quando aparece |
|------|---------|----------------|
| **Vertical** | $x = a$ | Quando a função "explode" (vai para ±∞) num ponto |
| **Horizontal** | $y = b$ | Quando a função se estabiliza num valor no infinito |
| **Oblíqua** | $y = mx + b$ | Quando a função cresce linearmente no infinito |

---

## 1️⃣ ASSÍNTOTAS VERTICAIS

### 📖 Definição

**Assíntota vertical** em $x = a$ existe quando:

$$\lim_{x \to a^-} f(x) = \pm\infty \quad \text{ou} \quad \lim_{x \to a^+} f(x) = \pm\infty$$

### 🔍 Como Encontrar?

**PASSO 1:** Encontra onde o **denominador é zero** (ou logaritmo de número negativo)

**PASSO 2:** Verifica se o **numerador NÃO é zero** nesses pontos

**PASSO 3:** Confirma calculando o limite

### 📝 Exemplo 1 - Assíntota Vertical Simples

**Função:** $f(x) = \frac{1}{x - 2}$

**Encontrar assíntotas verticais:**

**Passo 1:** Denominador zero
$$x - 2 = 0 \Rightarrow x = 2$$

**Passo 2:** Numerador em $x=2$
$$\text{Numerador} = 1 \neq 0 \quad \checkmark$$

**Passo 3:** Confirmar com limites
$$\lim_{x \to 2^-} \frac{1}{x-2} = \frac{1}{0^-} = -\infty$$
$$\lim_{x \to 2^+} \frac{1}{x-2} = \frac{1}{0^+} = +\infty$$

**Resposta:** Assíntota vertical em $\boxed{x = 2}$

---

### 📝 Exemplo 2 - Fatorização Necessária

**Função:** $g(x) = \frac{x+1}{x^2 - 4}$

**Encontrar assíntotas verticais:**

**Passo 1:** Denominador zero
$$x^2 - 4 = 0$$
$$(x-2)(x+2) = 0$$
$$x = 2 \quad \text{ou} \quad x = -2$$

**Passo 2:** Verificar numerador
- Em $x = 2$: numerador $= 2 + 1 = 3 \neq 0$ ✓
- Em $x = -2$: numerador $= -2 + 1 = -1 \neq 0$ ✓

**Passo 3:** Confirmar
Ambos fazem denominador zero e numerador não-zero.

**Resposta:** Assíntotas verticais em $\boxed{x = 2}$ e $\boxed{x = -2}$

---

### 📝 Exemplo 3 - CUIDADO! Sem Assíntota

**Função:** $h(x) = \frac{x^2 - 4}{x - 2}$

**Passo 1:** Denominador zero
$$x - 2 = 0 \Rightarrow x = 2$$

**Passo 2:** Verificar numerador em $x=2$
$$\text{Numerador} = 2^2 - 4 = 0$$

⚠️ **ATENÇÃO!** Numerador também é zero! Isso significa que podemos simplificar:

$$h(x) = \frac{x^2 - 4}{x - 2} = \frac{(x-2)(x+2)}{x-2} = x + 2 \quad (x \neq 2)$$

**Resultado:** **NÃO há assíntota vertical!** Apenas um "buraco" em $x=2$.

> 🔴 **REGRA IMPORTANTE:** Se numerador E denominador são ambos zero no mesmo ponto, simplifica primeiro! Pode não haver assíntota.

---

## 2️⃣ ASSÍNTOTAS HORIZONTAIS

### 📖 Definição

**Assíntota horizontal** em $y = L$ existe quando:

$$\lim_{x \to +\infty} f(x) = L \quad \text{ou} \quad \lim_{x \to -\infty} f(x) = L$$

### 🔍 Como Encontrar? (Funções Racionais)

Para $f(x) = \frac{P(x)}{Q(x)}$ onde $P$ e $Q$ são polinómios:

**Compara os graus:**

| Caso | Condição | Assíntota Horizontal |
|------|----------|---------------------|
| **1** | $\text{grau}(P) < \text{grau}(Q)$ | $y = 0$ |
| **2** | $\text{grau}(P) = \text{grau}(Q)$ | $y = \frac{a_n}{b_n}$ (coeficientes líderes) |
| **3** | $\text{grau}(P) > \text{grau}(Q)$ | Não há (pode ter oblíqua) |

---

### 📝 Exemplo 4 - Caso 1 (grau P < grau Q)

**Função:** $f(x) = \frac{3x + 2}{x^2 + 1}$

**Análise:**
- Grau do numerador: 1
- Grau do denominador: 2
- $1 < 2$ → **Caso 1**

**Cálculo do limite:**
$$\lim_{x \to \pm\infty} \frac{3x + 2}{x^2 + 1} = \lim_{x \to \pm\infty} \frac{\frac{3}{x} + \frac{2}{x^2}}{1 + \frac{1}{x^2}} = \frac{0 + 0}{1 + 0} = 0$$

**Resposta:** Assíntota horizontal $\boxed{y = 0}$

---

### 📝 Exemplo 5 - Caso 2 (grau P = grau Q)

**Função:** $g(x) = \frac{2x^2 + 5x + 1}{3x^2 - 7}$

**Análise:**
- Grau do numerador: 2
- Grau do denominador: 2
- $2 = 2$ → **Caso 2**

**Método rápido:** Divide coeficientes líderes
$$y = \frac{2}{3}$$

**Verificação com limite:**
$$\lim_{x \to \pm\infty} \frac{2x^2 + 5x + 1}{3x^2 - 7} = \lim_{x \to \pm\infty} \frac{2 + \frac{5}{x} + \frac{1}{x^2}}{3 - \frac{7}{x^2}} = \frac{2 + 0 + 0}{3 - 0} = \frac{2}{3}$$

**Resposta:** Assíntota horizontal $\boxed{y = \frac{2}{3}}$

---

### 📝 Exemplo 6 - Caso 3 (grau P > grau Q)

**Função:** $h(x) = \frac{x^3 + 1}{x^2 + 2}$

**Análise:**
- Grau do numerador: 3
- Grau do denominador: 2
- $3 > 2$ → **Caso 3**

**Cálculo:**
$$\lim_{x \to +\infty} \frac{x^3 + 1}{x^2 + 2} = \lim_{x \to +\infty} \frac{x + \frac{1}{x^2}}{1 + \frac{2}{x^2}} = +\infty$$

**Resposta:** **Não há assíntota horizontal** (mas pode ter oblíqua!)

---

### 📝 Exemplo 7 - COM O TEU ERRO! (Q8a do teste)

**Função:** $g(x) = \frac{x + 3}{2 - x}$

**❌ O QUE FIZESTE (ERRADO):**
$$g(1) = \frac{1+3}{2-1} = 4 \quad \text{(avaliaste num ponto!)}$$

**✅ O QUE DEVIAS FAZER:**

**Assíntota Vertical:**
$$2 - x = 0 \Rightarrow x = 2$$
$$\boxed{\text{Assíntota vertical: } x = 2}$$

**Assíntota Horizontal:**
$$\lim_{x \to +\infty} \frac{x + 3}{2 - x} = \lim_{x \to +\infty} \frac{x + 3}{-x + 2}$$

Divide tudo por $x$:
$$= \lim_{x \to +\infty} \frac{1 + \frac{3}{x}}{-1 + \frac{2}{x}} = \frac{1 + 0}{-1 + 0} = \frac{1}{-1} = -1$$

$$\boxed{\text{Assíntota horizontal: } y = -1}$$

> **🔴 O TEU ERRO:** Calculaste $g(1) = 4$, mas isso é apenas **o valor da função no ponto $x=1$**! Não tem nada a ver com assíntotas!

---

### 📝 Exemplo 8 - COM O TEU ERRO! (Q8b do teste)

**Função:** $f(x) = \frac{x^2}{x^2 + 4}$

**❌ O QUE FIZESTE:**
$$f(1) = \frac{1}{1+4} = \frac{1}{5}$$

**✅ CORREÇÃO:**

**Assíntota Vertical:**
$$x^2 + 4 = 0 \Rightarrow x^2 = -4$$

Não tem solução real! (**denominador nunca é zero**)

$$\boxed{\text{Não há assíntota vertical}}$$

**Assíntota Horizontal:**
- Grau numerador = 2
- Grau denominador = 2
- Caso 2: divide coeficientes

$$y = \frac{1}{1} = 1$$

**Verificação:**
$$\lim_{x \to \pm\infty} \frac{x^2}{x^2 + 4} = \lim_{x \to \pm\infty} \frac{1}{1 + \frac{4}{x^2}} = \frac{1}{1 + 0} = 1$$

$$\boxed{\text{Assíntota horizontal: } y = 1}$$

---

## 3️⃣ ASSÍNTOTAS OBLÍQUAS

### 📖 Definição

**Assíntota oblíqua** $y = mx + b$ existe quando:
- **NÃO há** assíntota horizontal
- E os limites seguintes existem:

$$m = \lim_{x \to \pm\infty} \frac{f(x)}{x}$$
$$b = \lim_{x \to \pm\infty} [f(x) - mx]$$

### 🔍 Quando Procurar?

**Apenas se:**
- Função racional com $\text{grau}(P) = \text{grau}(Q) + 1$
- Ou outras funções que crescem linearmente

---

### 📝 Exemplo 9 - Assíntota Oblíqua

**Função:** $f(x) = \frac{x^2 + 1}{x}$

**Passo 1:** Verificar se há horizontal
- Grau numerador (2) > Grau denominador (1)
- **Não há horizontal** ✓

**Passo 2:** Calcular $m$
$$m = \lim_{x \to +\infty} \frac{f(x)}{x} = \lim_{x \to +\infty} \frac{x^2 + 1}{x^2} = 1$$

**Passo 3:** Calcular $b$
$$b = \lim_{x \to +\infty} \left[\frac{x^2 + 1}{x} - 1 \cdot x\right]$$
$$= \lim_{x \to +\infty} \left[\frac{x^2 + 1 - x^2}{x}\right]$$
$$= \lim_{x \to +\infty} \frac{1}{x} = 0$$

**Resposta:** Assíntota oblíqua $\boxed{y = x}$

---

### 📝 Exemplo 10 - Divisão Polinomial (método alternativo)

**Função:** $g(x) = \frac{2x^2 + 3x + 1}{x + 1}$

**Método:** Dividir polinómios

$$\frac{2x^2 + 3x + 1}{x + 1} = 2x + 1 + \frac{0}{x+1}$$

Quando $x \to \pm\infty$, o resto $\frac{0}{x+1} \to 0$

**Resposta:** Assíntota oblíqua $\boxed{y = 2x + 1}$

---

## 🎯 ALGORITMO COMPLETO

Para encontrar **TODAS** as assíntotas de $f(x)$:

### ✅ CHECKLIST

```
□ 1. VERTICAIS:
   □ Igualar denominador a zero
   □ Verificar se numerador ≠ 0 nesses pontos
   □ Calcular limites laterais

□ 2. HORIZONTAIS:
   □ Calcular lim(x→+∞) f(x)
   □ Calcular lim(x→-∞) f(x)
   □ Se finitos → assíntotas horizontais
   
□ 3. OBLÍQUAS (só se não houver horizontais):
   □ Calcular m = lim(x→∞) f(x)/x
   □ Calcular b = lim(x→∞) [f(x) - mx]
   □ Se ambos finitos → y = mx + b
```

---

## 🚫 ERROS COMUNS

### ❌ ERRO 1: Avaliar função num ponto
```
ERRADO: g(1) = 4, logo assíntota em y = 4
CERTO: Calcular lim(x→±∞) g(x)
```

### ❌ ERRO 2: Esquecer de fatorizar
```
ERRADO: x² - 4 = 0 não tem solução
CERTO: (x-2)(x+2) = 0 → x = ±2
```

### ❌ ERRO 3: Não simplificar quando possível
```
f(x) = (x-2)/(x²-4) tem assíntota em x=2?
NÃO! Simplifica: f(x) = 1/(x+2) (x≠2)
Só tem assíntota em x = -2
```

### ❌ ERRO 4: Confundir vertical com horizontal
```
Vertical: x = a (linha vertical)
Horizontal: y = b (linha horizontal)
```

---

## 📋 TABELA RESUMO - ASSÍNTOTAS HORIZONTAIS

| Função | Grau(P) vs Grau(Q) | Assíntota |
|--------|-------------------|-----------|
| $\frac{3x+1}{x^2+1}$ | $1 < 2$ | $y = 0$ |
| $\frac{2x^2+1}{3x^2-5}$ | $2 = 2$ | $y = \frac{2}{3}$ |
| $\frac{x^3+1}{x^2+1}$ | $3 > 2$ | Oblíqua ou nenhuma |
| $\frac{5}{x}$ | $0 < 1$ | $y = 0$ |
| $\frac{4x}{2x+1}$ | $1 = 1$ | $y = \frac{4}{2} = 2$ |

---

## 💪 EXERCÍCIOS RESOLVIDOS PASSO A PASSO

### Exercício 1
**Função:** $f(x) = \frac{2x - 1}{x + 3}$

**Solução:**

**Verticais:**
$$x + 3 = 0 \Rightarrow x = -3$$
Numerador em $x=-3$: $2(-3) - 1 = -7 \neq 0$ ✓

**Assíntota vertical:** $\boxed{x = -3}$

**Horizontais:**
- Grau(P) = 1, Grau(Q) = 1
- Caso 2: $y = \frac{2}{1} = 2$

**Assíntota horizontal:** $\boxed{y = 2}$

---

### Exercício 2
**Função:** $g(x) = \frac{x^2 + 2x - 3}{x - 1}$

**Solução:**

**Verticais:**
$$x - 1 = 0 \Rightarrow x = 1$$
Numerador em $x=1$: $1 + 2 - 3 = 0$

⚠️ Ambos zero! Simplificar:
$$g(x) = \frac{(x+3)(x-1)}{x-1} = x + 3 \quad (x \neq 1)$$

**Não há assíntota vertical!** (apenas descontinuidade removível)

**Horizontais:**
Após simplificação: $g(x) = x + 3$ (função linear)
$$\lim_{x \to \pm\infty} (x+3) = \pm\infty$$

**Não há assíntota horizontal!**

**Oblíqua:**
A própria função é $y = x + 3$

**Assíntota oblíqua:** $\boxed{y = x + 3}$

---

### Exercício 3
**Função:** $h(x) = \frac{1}{x^2 - 9}$

**Solução:**

**Verticais:**
$$x^2 - 9 = 0$$
$$(x-3)(x+3) = 0$$
$$x = 3 \quad \text{ou} \quad x = -3$$

Numerador = 1 (sempre ≠ 0) ✓

**Assíntotas verticais:** $\boxed{x = 3}$ e $\boxed{x = -3}$

**Horizontais:**
- Grau(P) = 0, Grau(Q) = 2
- Caso 1: $y = 0$

**Assíntota horizontal:** $\boxed{y = 0}$

---

## 🎓 TESTE DE COMPREENSÃO

Responde mentalmente antes de ver a resposta:

### Questão 1
$f(x) = \frac{x}{x-5}$ tem assíntota vertical em que ponto?

<details>
<summary>Resposta</summary>

$x = 5$ (denominador zero, numerador ≠ 0)
</details>

### Questão 2
$g(x) = \frac{3x^2 + 1}{x^2 + 2}$ tem assíntota horizontal em?

<details>
<summary>Resposta</summary>

$y = 3$ (graus iguais, divide coeficientes: 3/1)
</details>

### Questão 3
$h(x) = \frac{x-2}{x^2-4}$ tem assíntota vertical em x=2?

<details>
<summary>Resposta</summary>

**NÃO!** Simplifica: $h(x)$ = $\frac{x-2}{(x-2)(x+2)}$ =$\$frac{1}{x+2}$ $(x≠2)$

Só tem assíntota em $x = -2$
</details>

---

## 📝 EXERCÍCIOS PARA PRATICAR

Tenta resolver sozinho:

1. $f(x) = \frac{x+1}{x-4}$
2. $g(x) = \frac{2x^2}{x^2+1}$
3. $h(x) = \frac{x^2-1}{x+1}$
4. $j(x) = \frac{3x^3+1}{x^2-4}$
5. $k(x) = \frac{5x+2}{3x-6}$

---

## ✅ RESPOSTA FINAL AOS TEUS ERROS

### No teu teste (Q8):

**Q8a)** $g(x) = \frac{x+3}{2-x}$
- ❌ Fizeste: $g(1) = 4$
- ✅ Correto: Assíntota vertical $x=2$, horizontal $y=-1$

**Q8b)** $f(x) = \frac{x^2}{x^2+4}$
- ❌ Fizeste: $f(1) = \frac{1}{5}$
- ✅ Correto: Sem assíntota vertical, horizontal $y=1$

> **Lembra-te:** Assíntotas são **RETAS LIMITE**, não pontos da função!

---

## 🎯 PARA MEMORIZAR

```
ASSÍNTOTAS = RETAS QUE A FUNÇÃO SE APROXIMA

VERTICAIS (x = a):
→ Denominador = 0
→ Numerador ≠ 0
→ Função "explode"

HORIZONTAIS (y = b):
→ lim(x→±∞) f(x) = b
→ Função "estabiliza"
→ Compara graus P e Q

OBLÍQUAS (y = mx+b):
→ Só se não houver horizontal
→ Função cresce linearmente
```

---

Boa sorte! Agora já sabes o que são assíntotas! 🚀
