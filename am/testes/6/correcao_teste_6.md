# Correcao — Teste 6 de Analise Matematica I

> [!info] Informacao
> **Teste:** Simulacao 6
> **Data:** 2026-02-12
> **Nota estimada:** ~5/20
> **Contexto:** Treino/estudo — o aluno consultou material para relembrar conceitos

---

## Grupo I — Funcoes e Dominios (0.4/2)

### 1) Dominio de $f(x) = \frac{\sqrt{x+3}}{x^2 - 4}$ — 0.4/0.75v

**Tua resposta:**
- $x^2 - 4 \neq 0 \Leftrightarrow x \neq 2 \cup x \neq -2$ ✅
- $x + 3 \geq 0 \Leftrightarrow x \geq -3$ ✅
- $D_f = [-3, -2[ \cup ]-2, +\infty[$ ❌

> [!warning] Erro: Esqueceste de excluir $x = 2$
> Identificaste corretamente que $x \neq 2$ e $x \neq -2$, mas no dominio final so excluiste $x = -2$.

**Resposta correta:**
$$D_f = [-3,\, -2[\; \cup \;]-2,\, 2[\; \cup \;]2,\, +\infty[$$

---

### 2) Funcao inversa de $f(x) = \frac{2x+1}{x-3}$ — 0/0.75v

**Tua resposta:** Incorreta.

> [!important] Resolucao correta
> $$y = \frac{2x+1}{x-3}$$
> $$y(x-3) = 2x+1$$
> $$xy - 3y = 2x + 1$$
> $$xy - 2x = 3y + 1$$
> $$x(y-2) = 3y + 1$$
> $$x = \frac{3y+1}{y-2}$$
>
> **Logo:** $f^{-1}(x) = \dfrac{3x+1}{x-2},\quad x \neq 2$

---

### 3) $(g \circ f)(x)$ com $f(x) = x^2+1$ e $g(x) = \sqrt{x-1}$ — 0/0.5v

**Tua resposta:** Escreveste $D_g = ]0, +\infty[$ e $D_f = \{x \in \mathbb{R}\}$ mas nao calculaste a composicao.

> [!warning] Problemas
> 1. $D_g = [1, +\infty[$ (nao $]0, +\infty[$), porque $g(x) = \sqrt{x-1}$ precisa $x \geq 1$
> 2. Falta o calculo de $(g \circ f)(x)$

> [!important] Resolucao correta
> $$(g \circ f)(x) = g(f(x)) = \sqrt{f(x) - 1} = \sqrt{x^2 + 1 - 1} = \sqrt{x^2} = |x|$$
>
> **Dominio:** Precisamos $f(x) \in D_g$, ou seja $x^2 + 1 \geq 1 \Leftrightarrow x^2 \geq 0$ (sempre verdade).
>
> $$D_{g \circ f} = \mathbb{R}$$

---

## Grupo II — Limites e Continuidade (1.45/3)

### 1) $\lim_{x \to 2} \frac{x^2-4}{x^2-3x+2}$ — 0.5/0.5v ✅

**Tua resposta:** Usaste L'Hopital → $\lim_{x \to 2} \frac{2x}{2x-3} = \frac{4}{1} = 4$ ✅

Correto! Alternativa por fatorizacao:
$$\frac{(x-2)(x+2)}{(x-1)(x-2)} = \frac{x+2}{x-1} \xrightarrow{x \to 2} \frac{4}{1} = 4$$

---

### 2) $\lim_{x \to +\infty} \frac{3x^2 - x + 1}{2x^2 + 5}$ — 0.1/0.5v

**Tua resposta:** Identificaste $\frac{\infty}{\infty}$ mas nao resolveste.

> [!important] Resolucao correta
> Quando os graus do numerador e denominador sao iguais, o limite e a razao dos coeficientes do termo de maior grau:
> $$\lim_{x \to +\infty} \frac{3x^2 - x + 1}{2x^2 + 5} = \frac{3}{2}$$
>
> **Metodo:** Dividir tudo por $x^2$:
> $$= \lim_{x \to +\infty} \frac{3 - \frac{1}{x} + \frac{1}{x^2}}{2 + \frac{5}{x^2}} = \frac{3 - 0 + 0}{2 + 0} = \frac{3}{2}$$

---

### 3) $\lim_{x \to 0} \frac{\sin(3x)}{x}$ — 0.1/0.5v

**Tua resposta:** Identificaste $\frac{0}{0}$ mas nao resolveste.

> [!important] Resolucao correta
> Usa o limite notavel $\lim_{u \to 0} \frac{\sin(u)}{u} = 1$:
> $$\lim_{x \to 0} \frac{\sin(3x)}{x} = \lim_{x \to 0} \frac{\sin(3x)}{3x} \cdot 3 = 1 \cdot 3 = 3$$

---

### 4) Continuidade — determinar $k$ — 0.75/0.75v ✅

**Tua resposta:**
$$\lim_{x \to 1} \frac{x^2-1}{x-1} = \frac{(x-1)(x+1)}{x-1} = x+1 \xrightarrow{x \to 1} 2 \implies k = 2$$

Perfeito! ✅

---

### 5) Teorema de Bolzano em $]0, 1[$ para $x^3 - 3x + 1 = 0$ — 0/0.75v

**Tua resposta:** Usaste a formula resolvente (formula quadratica) — isto nao se aplica aqui.

> [!warning] Problemas
> 1. A equacao e **cubica** ($x^3$), nao quadratica — a formula resolvente nao funciona
> 2. A questao pede explicitamente o **Teorema de Bolzano**, nao para resolver a equacao
> 3. Tambem fizeste $\sqrt{5} = 5$ (confundiste raiz com valor)

> [!important] Resolucao correta — Teorema de Bolzano
> Seja $f(x) = x^3 - 3x + 1$. Esta funcao e **continua** em $[0, 1]$ (polinomio).
>
> Calcular nos extremos:
> - $f(0) = 0 - 0 + 1 = 1 > 0$
> - $f(1) = 1 - 3 + 1 = -1 < 0$
>
> Como $f$ e continua em $[0, 1]$ e $f(0) \cdot f(1) = 1 \times (-1) = -1 < 0$, pelo **Teorema de Bolzano**, existe pelo menos um $c \in \;]0, 1[$ tal que $f(c) = 0$. $\blacksquare$

> [!note]- Resumo do metodo Bolzano
> 1. Verificar que $f$ e continua no intervalo $[a, b]$
> 2. Calcular $f(a)$ e $f(b)$
> 3. Se $f(a)$ e $f(b)$ tem sinais opostos → existe raiz em $]a, b[$

---

## Grupo III — Assintotas (0.5/2)

### 1) Assintotas de $f(x) = \frac{x^2+1}{x-1}$ — 0.3/0.75v

**Tua resposta:**
- AV: $x = 1$ com $\lim_{x \to 1^+} = +\infty$ e $\lim_{x \to 1^-} = -\infty$ ✅
- $m = \lim_{x \to \pm\infty} \frac{x^2+1}{x(x-1)} = 0$ → sem assintota obliqua ❌

> [!warning] Erro no calculo de $m$
> $$m = \lim_{x \to \pm\infty} \frac{x^2+1}{x^2-x} = \lim_{x \to \pm\infty} \frac{1 + 1/x^2}{1 - 1/x} = \frac{1}{1} = 1 \neq 0$$

> [!important] Resolucao correta
> **AV:** $x = 1$ ✅ (os limites laterais estao corretos)
>
> **Assintota obliqua** ($y = mx + b$):
> $$m = \lim_{x \to \pm\infty} \frac{f(x)}{x} = \lim_{x \to \pm\infty} \frac{x^2+1}{x(x-1)} = 1$$
> $$b = \lim_{x \to \pm\infty} \left[f(x) - mx\right] = \lim_{x \to \pm\infty} \left[\frac{x^2+1}{x-1} - x\right] = \lim_{x \to \pm\infty} \frac{x^2+1 - x^2+x}{x-1} = \lim_{x \to \pm\infty} \frac{x+1}{x-1} = 1$$
>
> **Assintota obliqua:** $y = x + 1$

---

### 2) Assintotas de $g(x) = \frac{2x-3}{x+2}$ — 0.15/0.75v

**Tua resposta:**
- AV: $x = -2$ ✅ (identificaste corretamente)
- Limites laterais: sinais trocados ❌
- Faltam assintotas horizontais ❌

> [!warning] Sinais errados nos limites laterais
> O numerador em $x = -2$ e: $2(-2) - 3 = -7$ (negativo)
> - $\lim_{x \to -2^+}$: denominador $\to 0^+$ → $\frac{-7}{0^+} = -\infty$ (tu puseste $+\infty$)
> - $\lim_{x \to -2^-}$: denominador $\to 0^-$ → $\frac{-7}{0^-} = +\infty$ (tu puseste $-\infty$)

> [!important] Falta a assintota horizontal
> $$\lim_{x \to \pm\infty} \frac{2x-3}{x+2} = \frac{2}{1} = 2$$
>
> **AH:** $y = 2$

---

### 3) Assintotas de $h(x) = \frac{e^x}{e^x+1}$ — Nao respondida (0/0.5v)

> [!important] Resolucao correta
> **Nao tem AV** (denominador $e^x + 1 > 0$ para todo $x$)
>
> **AH:**
> - $\lim_{x \to +\infty} \frac{e^x}{e^x+1} = \lim_{x \to +\infty} \frac{1}{1+e^{-x}} = 1$ → **AH:** $y = 1$
> - $\lim_{x \to -\infty} \frac{e^x}{e^x+1} = \frac{0}{0+1} = 0$ → **AH:** $y = 0$

---

## Grupo IV — Derivadas (0/3.5) — Nao respondido

> [!warning] Grupo inteiro em branco
> Este grupo vale 3.5 valores — e muito peso para deixar em branco!

> [!note]- Resolucoes corretas
> **1)** $f(x) = x^3 \cdot \ln(x)$
> $$f'(x) = 3x^2 \cdot \ln(x) + x^3 \cdot \frac{1}{x} = 3x^2\ln(x) + x^2$$
>
> **2)** $f(x) = \frac{e^x}{x^2+1}$
> $$f'(x) = \frac{e^x(x^2+1) - e^x \cdot 2x}{(x^2+1)^2} = \frac{e^x(x^2 - 2x + 1)}{(x^2+1)^2} = \frac{e^x(x-1)^2}{(x^2+1)^2}$$
>
> **3)** $f(x) = \sin(3x^2+1)$ — **regra da cadeia!**
> $$f'(x) = \cos(3x^2+1) \cdot 6x$$
>
> **4)** $f(x) = \ln(\cos(x))$ — **regra da cadeia!**
> $$f'(x) = \frac{-\sin(x)}{\cos(x)} = -\tan(x)$$
>
> **5)** Reta tangente a $f(x) = x^2 - 3x + 2$ em $x_0 = 1$:
> - $f(1) = 1 - 3 + 2 = 0$ → ponto $(1, 0)$
> - $f'(x) = 2x - 3$ → $f'(1) = -1$ (declive)
> - $y - 0 = -1(x - 1) \Leftrightarrow y = -x + 1$
>
> **6)** Extremos de $f(x) = x^3 - 3x + 2$:
> - $f'(x) = 3x^2 - 3 = 0 \Leftrightarrow x = \pm 1$
> - $f''(x) = 6x$
> - $f''(1) = 6 > 0$ → **minimo** em $(1, 0)$
> - $f''(-1) = -6 < 0$ → **maximo** em $(-1, 4)$

---

## Grupo V — Integrais Indefinidos (2.35/4.5)

### 1) $\int (3x^2 - 4x + 1)\,dx$ — 0.5/0.5v ✅

**Tua resposta:** $x^3 - \frac{4x^2}{2} + x + C = x^3 - 2x^2 + x + C$ ✅

---

### 2) $\int \frac{1}{x}\,dx$ — 0.5/0.5v ✅

**Tua resposta:** $\ln|x| + C$ ✅

---

### 3) $\int e^{2x}\,dx$ — 0/0.5v

**Tua resposta:** $e^u + C$ (falta o fator $\frac{1}{2}$)

> [!important] Resolucao correta
> Substituicao: $u = 2x$, $du = 2\,dx$, $dx = \frac{du}{2}$
> $$\int e^{2x}\,dx = \int e^u \cdot \frac{du}{2} = \frac{1}{2}e^u + C = \frac{e^{2x}}{2} + C$$
>
> **Regra geral:** $\int e^{ax}\,dx = \frac{e^{ax}}{a} + C$

---

### 4) $\int x \cdot e^x\,dx$ — 0.75/0.75v ✅

**Tua resposta:** Por partes com $u = x$, $dv = e^x\,dx$ → $x \cdot e^x - e^x + C$ ✅

> [!tip] Excelente!
> Integracaco por partes bem aplicada! Isto e uma **grande melhoria** em relacao aos testes anteriores. Escolha correta de $u$ e $dv$, execucao sem erros.

---

### 5) $\int \cos(3x)\,dx$ — 0/0.5v

**Tua resposta:** $-\sin(3x) + C$ ❌

> [!warning] Dois erros
> 1. **Sinal errado:** a primitiva de $\cos$ e $+\sin$, nao $-\sin$ (confundiste com a derivada de $\cos$, que e $-\sin$)
> 2. **Falta o fator** $\frac{1}{3}$ (pela regra da cadeia "ao contrario")

> [!important] Resolucao correta
> $$\int \cos(3x)\,dx = \frac{\sin(3x)}{3} + C$$
>
> **Regra geral:** $\int \cos(ax)\,dx = \frac{\sin(ax)}{a} + C$

---

### 6) $\int \frac{2x}{x^2+1}\,dx$ — 0/0.5v

**Tua resposta:** $\frac{1}{x}\arctan(x^2)$ ❌

> [!warning] Confusao entre dois integrais diferentes
> - $\int \frac{1}{1+x^2}\,dx = \arctan(x) + C$ ← esta e a da tabela
> - $\int \frac{2x}{1+x^2}\,dx = \ln(x^2+1) + C$ ← esta e **diferente**!
>
> O $2x$ no numerador e a **derivada** de $x^2+1$, o que torna isto um integral direto do tipo $\int \frac{f'(x)}{f(x)}\,dx = \ln|f(x)| + C$.

> [!important] Resolucao correta
> $$\int \frac{2x}{x^2+1}\,dx = \ln(x^2+1) + C$$

---

### 7) $\int x \cdot \sin(x)\,dx$ — 0.1/0.75v

**Tua resposta:** Tentaste por partes (bom!), mas escolheste $u = \sin(x)$ e $dv = x\,dx$, o que complicou. A execucao ficou errada.

> [!important] Resolucao correta
> Escolha certa: $u = x$, $dv = \sin(x)\,dx$
> - $du = dx$
> - $v = -\cos(x)$
>
> $$\int x\sin(x)\,dx = -x\cos(x) - \int(-\cos(x))\,dx = -x\cos(x) + \sin(x) + C$$

> [!note]- Dica para por partes
> **Regra LIATE** (prioridade para escolher $u$):
> **L**ogaritmica → **I**nversa trig → **A**lgebrica → **T**rigonometrica → **E**xponencial
>
> Em $x \cdot \sin(x)$: $x$ e algebrica (A), $\sin(x)$ e trigonometrica (T). Como A vem antes de T, escolhe-se $u = x$.

---

### 8) $\int \frac{1}{1+x^2}\,dx$ — 0.5/0.5v ✅

**Tua resposta:** $\arctan(x) + C$ ✅

---

## Grupo VI — Integrais Definidos (0.4/2)

### 1) $\int_0^1 (x^2+1)\,dx$ — 0/0.5v

**Tua resposta:** $[2x]_0^1 = 2(1) + 2(0) = 2$ ❌

> [!danger] ERRO CRITICO: Derivaste em vez de integrar!
> Fizeste $\int(x^2+1)\,dx = 2x$ — mas $2x$ e a **derivada** de $x^2$, nao o integral!
>
> - **Derivada** de $x^2$ = $2x$ (diminui expoente) ← fizeste isto
> - **Integral** de $x^2$ = $\frac{x^3}{3}$ (aumenta expoente) ← devias fazer isto

> [!important] Resolucao correta
> $$\int_0^1 (x^2+1)\,dx = \left[\frac{x^3}{3} + x\right]_0^1 = \left(\frac{1}{3} + 1\right) - (0 + 0) = \frac{4}{3}$$

---

### 2) $\int_1^e \frac{1}{x}\,dx$ — 0.4/0.5v

**Tua resposta:** $[\ln(x)]_1^e = \ln(e) - \ln(1) = 1 - 0 = 1$ ✅

Resultado correto! Pequena nota: na notacao pareceu que escreveste "$+$" em vez de "$-$" na avaliacao ($F(b) - F(a)$, nao $F(a) + F(b)$). O resultado e o mesmo porque $\ln(1) = 0$, mas cuidado com a notacao.

---

### 3) Primitiva $F(x)$ de $f(x) = 2x+1$ com $F(0) = 3$ — 0/1v

**Tua resposta:** Substituiste valores em $f(x)$ em vez de encontrar $F(x)$.

> [!important] Resolucao correta
> **Passo 1:** Encontrar a primitiva geral:
> $$F(x) = \int(2x+1)\,dx = x^2 + x + C$$
>
> **Passo 2:** Usar a condicao $F(0) = 3$:
> $$F(0) = 0^2 + 0 + C = C = 3$$
>
> **Resultado:** $F(x) = x^2 + x + 3$

---

## Grupo VII — Areas (0/2)

### 1) Area limitada por $f(x) = x^2$, eixo $Ox$, em $[0, 2]$ — 0/0.75v

**Tua resposta:** $[2x]_0^2 = 2(2) + 2(0) = 4$ ❌

> [!danger] ERRO CRITICO: Derivaste em vez de integrar (de novo!)
> Mesmo erro que no VI.1 — fizeste a **derivada** de $x^2$ ($= 2x$) em vez do **integral** ($= x^3/3$).

> [!important] Resolucao correta
> $$A = \int_0^2 x^2\,dx = \left[\frac{x^3}{3}\right]_0^2 = \frac{8}{3} - 0 = \frac{8}{3}$$

---

### 2) Area entre $f(x) = x^2$ e $g(x) = x$ — Nao respondida (0/1.25v)

> [!note]- Resolucao correta
> **Passo 1:** Intersecoes: $x^2 = x \Leftrightarrow x^2 - x = 0 \Leftrightarrow x(x-1) = 0 \Leftrightarrow x = 0$ ou $x = 1$
>
> **Passo 2:** Qual esta por cima? Em $[0, 1]$: $g(x) = x \geq x^2 = f(x)$
>
> **Passo 3:** Calcular:
> $$A = \int_0^1 (x - x^2)\,dx = \left[\frac{x^2}{2} - \frac{x^3}{3}\right]_0^1 = \frac{1}{2} - \frac{1}{3} = \frac{1}{6}$$

---

## Grupo VIII — Nao respondido (0/1)

> [!note]- Resolucao correta
> $\sin(x) = \frac{1}{2}$ em $[0, 2\pi]$:
> $$x = \frac{\pi}{6} \quad \text{ou} \quad x = \pi - \frac{\pi}{6} = \frac{5\pi}{6}$$

---

## Resumo da Avaliacao

| Grupo | Tema | Nota | Cotacao |
|-------|------|------|---------|
| I | Funcoes e dominios | 0.4 | 2 |
| II | Limites e continuidade | 1.45 | 3 |
| III | Assintotas | 0.5 | 2 |
| IV | Derivadas | 0 | 3.5 |
| V | Integrais indefinidos | **2.35** | 4.5 |
| VI | Integrais definidos | 0.4 | 2 |
| VII | Areas | 0 | 2 |
| VIII | Trigonometria | 0 | 1 |
| **Total** | | **~5.1** | **20** |

---

## O que fizeste BEM

> [!tip] Pontos positivos
> 1. **Integracao por partes (V.4) perfeitamente executada!** — escolha correta de $u$ e $dv$, calculo sem erros. Isto era 0% nos testes anteriores!
> 2. **Primitivas basicas** (V.1, V.2, V.8) todas corretas — sabes $x^n$, $1/x$, e $\arctan$
> 3. **Continuidade com $k$** (II.4) — perfeito, sem hesitacao
> 4. **L'Hopital** (II.1) — aplicado corretamente
> 5. **Assintotas verticais** — identificaste corretamente em III.1 e III.2

## O que precisa de trabalho

> [!danger] Problemas criticos
> ### 1. Derivar em vez de integrar (VI.1, VII.1)
> Este erro persiste! Em integrais **definidos**, continuas a fazer a derivada ($x^2 \to 2x$) em vez do integral ($x^2 \to x^3/3$). O Sistema STOP e essencial aqui.
>
> ### 2. Fator da cadeia em integrais (V.3, V.5)
> Quando integras $e^{2x}$ ou $\cos(3x)$, tens de dividir pelo coeficiente interior:
> - $\int e^{2x}\,dx = \frac{e^{2x}}{2} + C$ (dividir por 2)
> - $\int \cos(3x)\,dx = \frac{\sin(3x)}{3} + C$ (dividir por 3)
>
> ### 3. Grupo IV inteiro em branco (3.5 valores!)
> Derivadas e o tema com mais peso no teste. Mesmo que nao tenhas a certeza, tenta — so a regra do produto e quociente ja davam pontos.
>
> ### 4. Limites incompletos (II.2, II.3)
> Identificaste a indeterminacao mas nao resolveste. Lembra-te:
> - $\frac{\infty}{\infty}$ com polinomios → dividir pelo maior grau (ou razao dos coeficientes)
> - $\frac{0}{0}$ com $\sin$ → usar limite notavel $\frac{\sin(u)}{u} \to 1$

> [!warning] Outros pontos a melhorar
> - **Bolzano:** Nao e para resolver a equacao — e so avaliar $f(a)$ e $f(b)$ e ver se tem sinais opostos
> - **Assintota obliqua:** $m = \lim \frac{f(x)}{x}$ — cuidado com o calculo, $\frac{x^2+1}{x^2-x} \to 1$, nao $0$
> - **Sinais nos limites laterais:** Verifica sempre o sinal do numerador e denominador separadamente
> - **V.6:** $\frac{2x}{x^2+1}$ nao e $\arctan$ — o $2x$ no numerador indica $\ln$, nao $\arctan$

---

## Evolucao

| Teste | Nota | Por Partes | Der vs Int | Limites | Assintotas |
|-------|------|-----------|------------|---------|------------|
| 1 (Prep) | ~5 | 0% | ❌ | Basico | 0% |
| 2 (Treino) | ~6 | 0% | ❌ | Basico | 0% |
| 3 (Final) | ~6 | 0% | ❌ | Basico | 0% |
| 4 (Pos-est) | ~11 | 30% | ❌ | Bom | **100%** |
| 5 (Areas) | ~8 | 20% | ❌ | Bom | 100% |
| **6 (Atual)** | **~5** | **✅ V.4!** | **❌** | Medio | VA ok |

> [!note] Nota sobre o contexto
> A nota de ~5 reflete que consultaste material durante o teste (normal para estudo) e que varios grupos ficaram em branco. O **ponto positivo real** deste teste e que a integracao por partes funcionou pela primeira vez com execucao perfeita — isso mostra que com pratica, os conceitos ficam.
