# Correção — Teste AMI 18

> [!info] Informação
> **Disciplina:** Análise Matemática I
> **Data da correção:** 19 de fevereiro de 2026

---

## Pergunta 1 — Domínios

### a) $f(x) = \dfrac{x + 1}{x^2 - 5x + 6}$

**Tua resposta:** $D_f = ]-\infty, 2[ \cup ]2, 3[ \cup ]3, +\infty[$

**Correção:** ✅ **CORRETO**

Resolveste bem a equação $x^2 - 5x + 6 = 0$ pela fórmula resolvente:
$$x = \frac{5 \pm \sqrt{25 - 24}}{2} = \frac{5 \pm 1}{2} \Rightarrow x = 3 \text{ ou } x = 2$$

---

### b) $g(x) = \sqrt{4 - x^2}$

**Tua resposta:** $D_g = [-2, 2]$

**Correção:** ✅ **CORRETO**

$4 - x^2 \geq 0 \Leftrightarrow x^2 \leq 4 \Leftrightarrow -2 \leq x \leq 2$

---

### c) $h(x) = \ln(2x - 6)$

**Tua resposta:** $D_h = ]3, +\infty[$

**Correção:** ✅ **CORRETO**

$2x - 6 > 0 \Leftrightarrow 2x > 6 \Leftrightarrow x > 3$

---

## Pergunta 2 — Limites

### a) $\displaystyle \lim_{x \to 3} \dfrac{x^2 - 9}{x - 3}$

**Tua resposta:** $= \lim_{x \to 3} \dfrac{(x-3)(x+3)}{x-3} = \lim_{x \to 3} (x + 3) = 6$

**Correção:** ✅ **CORRETO**

---

### b) $\displaystyle \lim_{x \to +\infty} \dfrac{5x^2 - 3x + 1}{2x^2 + 7}$

**Tua resposta:** $= \lim_{x \to +\infty} \dfrac{5 - \frac{3}{x} + \frac{1}{x^2}}{2 + \frac{7}{x^2}} = \dfrac{5}{2}$

**Correção:** ✅ **CORRETO**

---

### c) $\displaystyle \lim_{x \to 0} \dfrac{\sqrt{1 + x} - 1}{x}$

**Tua resposta:** Multiplicaste pelo conjugado e obtiveste $\dfrac{1}{2}$

**Correção:** ✅ **CORRETO**

$$= \lim_{x \to 0} \dfrac{(\sqrt{1+x} - 1)(\sqrt{1+x} + 1)}{x(\sqrt{1+x} + 1)} = \lim_{x \to 0} \dfrac{x}{x(\sqrt{1+x} + 1)} = \dfrac{1}{1 + 1} = \dfrac{1}{2}$$

---

## Pergunta 3 — Continuidade

**Tua resposta:** $k = 4$

**Correção:** ✅ **CORRETO**

$$\lim_{x \to 2} \dfrac{x^2 - 4}{x - 2} = \lim_{x \to 2} \dfrac{(x-2)(x+2)}{x-2} = \lim_{x \to 2} (x + 2) = 4$$

Para continuidade: $k = 4$

---

## Pergunta 4 — Teorema de Bolzano

**Tua resposta:** 
- $g(0) = 0^3 - 4(0) + 1 = 1$
- $g(2) = 2^3 - 4(2) + 1 = 8 - 8 + 1 = 1$
- Conclusão: "Não tem zeros entre $]0, 2[$"

**Correção:** ❌ **INCORRETO**

> [!warning] Erro de cálculo
> O cálculo de $g(2)$ está correto, mas a conclusão está errada. O problema é que ambos os valores são positivos, então **não podemos concluir nada** com estes pontos específicos.
> 
> **Mas a função TEM zero no intervalo!** Precisas de testar outros pontos.

**Resolução correta:**
- $g(0) = 1 > 0$
- $g(1) = 1 - 4 + 1 = -2 < 0$

Como $g$ é contínua (polinomial), $g(0) > 0$ e $g(1) < 0$, pelo Teorema de Bolzano existe pelo menos um zero em $]0, 1[ \subset ]0, 2[$.

> [!tip] Dica
> Quando os dois extremos do intervalo têm o mesmo sinal, experimenta pontos intermédios (como $x = 1$).

---

## Pergunta 5 — Assíntotas

**Tua resposta:**
- AV: $x = 3$
- AH: $y = 2$

**Correção:** ✅ **CORRETO**

**Assíntota Vertical:** $x - 3 = 0 \Rightarrow x = 3$

$$\lim_{x \to 3^+} \dfrac{2x + 1}{x - 3} = \dfrac{7}{0^+} = +\infty$$

**Assíntota Horizontal:**
$$\lim_{x \to +\infty} \dfrac{2x + 1}{x - 3} = \lim_{x \to +\infty} \dfrac{2 + \frac{1}{x}}{1 - \frac{3}{x}} = \dfrac{2}{1} = 2$$

Logo: AV em $x = 3$, AH em $y = 2$

---

## Pergunta 6 — Derivadas

### a) $f(x) = x^4 - 3x^2 + 5x - 2$

**Tua resposta:** $f'(x) = 4x^3 - 6x + 5$

**Correção:** ✅ **CORRETO**

---

### b) $g(x) = (2x + 1)^5$

**Tua resposta:** $g'(x) = 5(2x + 1)^4 \cdot 2$

**Correção:** ✅ **CORRETO**

Simplificado: $g'(x) = 10(2x + 1)^4$

---

### c) $h(x) = \dfrac{x^2 - 1}{x + 3}$

**Tua resposta:** $h'(x) = \dfrac{2x(x + 3) - (x^2 - 1)}{(x + 3)^2}$

**Correção:** ✅ **CORRETO** (falta simplificar)

Simplificado:
$$h'(x) = \dfrac{2x^2 + 6x - x^2 + 1}{(x + 3)^2} = \dfrac{x^2 + 6x + 1}{(x + 3)^2}$$

---

### d) $p(x) = e^{x^2 + 1}$

**Tua resposta:** $p'(x) = e^{x^2 + 1} \cdot 2x$

**Correção:** ✅ **CORRETO**

---

## Pergunta 7 — Reta Tangente

**Tua resposta:**
- $f(1) = 1^3 - 2(1) = -1$
- $f'(x) = 3x^2 - 2$, logo $f'(1) = 3(1)^2 - 2 = 1$
- Ponto: $(1, -1)$
- Declive: $m = 1$

**Correção:** ✅ **CORRETO** (falta escrever a equação)

**Equação da reta tangente:**
$$y - y_0 = m(x - x_0)$$
$$y - (-1) = 1(x - 1)$$
$$y + 1 = x - 1$$
$$y = x - 2$$

---

## Pergunta 8 — Integrais Indefinidos

### a) $\displaystyle \int (4x^3 - 6x + 2) \, dx$

**Tua resposta:** $x^4 - 3x^2 + 2x + C$

**Correção:** ✅ **CORRETO**

---

### b) $\displaystyle \int \dfrac{2x}{x^2 + 1} \, dx$

**Tua resposta:** $\ln(x^2 + 1) + C$

**Correção:** ✅ **CORRETO**

---

### c) $\displaystyle \int x \cdot e^x \, dx$

**Tua resposta:** $\dfrac{x^2}{2} \cdot e^x - e^x + C$

**Correção:** ❌ **INCORRETO**

> [!warning] Erro na aplicação de integração por partes

**Resolução correta (por partes):**

Seja $u = x$ e $dv = e^x \, dx$

Então $du = dx$ e $v = e^x$

$$\int x \cdot e^x \, dx = x \cdot e^x - \int e^x \, dx = x \cdot e^x - e^x + C = e^x(x - 1) + C$$

> [!important] O teu erro
> Parece que usaste $v = \dfrac{x^2}{2} \cdot e^x$, o que não é a primitiva de $e^x$.

---

### d) $\displaystyle \int \ln(x) \, dx$

**Tua resposta:** $x \cdot \ln(x) - x + C$

**Correção:** ✅ **CORRETO**

Por partes com $u = \ln(x)$, $dv = dx$:
$$\int \ln(x) \, dx = x \ln(x) - \int x \cdot \dfrac{1}{x} \, dx = x \ln(x) - x + C$$

---

## Pergunta 9 — Integral Definida

$$\int_0^2 (3x^2 - 4x + 1) \, dx$$

**Tua resposta:** $\left[ x^3 - 2x^2 + x \right]_0^2 = 2^3 - 2(2)^2 + 2 = 8 - 8 + 2 = 2$

**Correção:** ✅ **CORRETO**

---

## Pergunta 10 — Primitiva com Condição Inicial

**Tua resposta:** $F(1) = 3\ln(x) + x^2 + C = 5$, logo $C = 4$

**Correção:** ✅ **CORRETO**

$F(x) = 3\ln|x| + x^2 + C$

$F(1) = 3\ln(1) + 1^2 + C = 0 + 1 + C = 5 \Rightarrow C = 4$

**Resposta final:** $F(x) = 3\ln|x| + x^2 + 4$

---

## Pergunta 11 — Área

$$\int_{-2}^{2} (4 - x^2) \, dx$$

**Tua resposta:** 
$$\left[ 4x - \dfrac{x^3}{3} \right]_{-2}^{2} = \left( 8 - \dfrac{8}{3} \right) - \left( -8 + \dfrac{8}{3} \right) = \dfrac{16}{3} + \dfrac{24}{3} - \dfrac{8}{3} = \dfrac{32}{3}$$

**Correção:** ❌ **ERRO DE CÁLCULO**

**Resolução correta:**

A área entre $y = x^2$ e $y = 4$ é:
$$A = \int_{-2}^{2} (4 - x^2) \, dx = \left[ 4x - \dfrac{x^3}{3} \right]_{-2}^{2}$$

Para $x = 2$: $4(2) - \dfrac{8}{3} = 8 - \dfrac{8}{3} = \dfrac{24 - 8}{3} = \dfrac{16}{3}$

Para $x = -2$: $4(-2) - \dfrac{(-2)^3}{3} = -8 - \dfrac{-8}{3} = -8 + \dfrac{8}{3} = \dfrac{-24 + 8}{3} = -\dfrac{16}{3}$

$$A = \dfrac{16}{3} - \left( -\dfrac{16}{3} \right) = \dfrac{16}{3} + \dfrac{16}{3} = \dfrac{32}{3}$$

> [!success] Afinal está correto!
> O resultado final $\dfrac{32}{3}$ está certo. O teu caminho tinha alguns passos confusos na escrita, mas chegaste ao resultado correto.

**Correção revista:** ✅ **CORRETO** — $A = \dfrac{32}{3}$ u.a.

---

## Resumo

| Pergunta | Resultado |
|:--------:|:---------:|
| 1a | ✅ |
| 1b | ✅ |
| 1c | ✅ |
| 2a | ✅ |
| 2b | ✅ |
| 2c | ✅ |
| 3 | ✅ |
| 4 | ❌ |
| 5 | ✅ |
| 6a | ✅ |
| 6b | ✅ |
| 6c | ✅ |
| 6d | ✅ |
| 7 | ✅ (falta equação) |
| 8a | ✅ |
| 8b | ✅ |
| 8c | ❌ |
| 8d | ✅ |
| 9 | ✅ |
| 10 | ✅ |
| 11 | ✅ |

**Acertos:** 18/21 alíneas (~86%)

---

## Pontos a Melhorar

> [!important] Erros identificados

1. **Teorema de Bolzano (Q4):** Quando os extremos do intervalo têm o mesmo sinal, testa pontos intermédios. Não concluas "não tem zeros" só porque dois pontos específicos dão positivo.

2. **Integração por partes (Q8c):** Revê a escolha de $u$ e $dv$. Para $\int x \cdot e^x \, dx$:
   - $u = x$ (o que deriva e simplifica)
   - $dv = e^x \, dx$ (o que primitiva facilmente)

3. **Reta tangente (Q7):** Não te esqueças de escrever a equação final da reta ($y = x - 2$).

---

## Esclarecimento — Integrais por Partes (8c e 8d)

> [!note] Dúvidas discutidas após o teste

### 8c) $\int x \cdot e^x \, dx$ — Porquê não dividir por 2?

O teu erro foi pensar que precisavas "dividir por 2" — isso aplica-se noutras situações (como quando tens $\int x \cdot e^{x^2} dx$ onde o $x$ é a derivada interna). Aqui não há nada a dividir.

**Integração por partes:** $\int u \, dv = uv - \int v \, du$

- $u = x$ → $du = dx$
- $dv = e^x \, dx$ → $v = e^x$

$$\int x \cdot e^x \, dx = x \cdot e^x - \int e^x \, dx = x \cdot e^x - e^x + C$$

Não há divisão por 2 aqui porque não estás a usar substituição nem regra da cadeia inversa.

#### Quando é que se divide então?

A "divisão" acontece quando usas **substituição** (regra da cadeia inversa), não integração por partes.

**Exemplo com $x^2$ no expoente:**

$$\int x \cdot e^{x^2} \, dx$$

Aqui o $x$ é a **derivada interna** de $x^2$ (que é $2x$). Falta o 2, então:

$$= \frac{1}{2} \int 2x \cdot e^{x^2} \, dx = \frac{1}{2} e^{x^2} + C$$

**Divides por 2** porque a derivada de $x^2$ é $2x$, não $x$.

**E se tiver constante a multiplicar?**

$$\int 3x \cdot e^{x^2} \, dx$$

A derivada de $x^2$ é $2x$. Tens $3x$, precisas de $2x$:

$$= \frac{3}{2} \int 2x \cdot e^{x^2} \, dx = \frac{3}{2} e^{x^2} + C$$

**Regra:** Ajustas a constante para ter exatamente a derivada interna.

#### Comparação: Quando usar cada método

| Integral | Método | Porquê |
|:---------|:-------|:-------|
| $\int x \cdot e^x \, dx$ | Por partes | $x$ não é derivada de nada no expoente |
| $\int x \cdot e^{x^2} \, dx$ | Substituição | $x$ é (quase) a derivada de $x^2$ |

**Resumo:**
- **Substituição (dividir):** quando o que está "fora" é a derivada do que está "dentro"
- **Por partes:** quando tens dois tipos de função diferentes (polinomial × exponencial, polinomial × logaritmo, etc.)

---

### 8d) $\int \ln(x) \, dx$ — Porquê o $-x$ no final?

**Por partes:**
- $u = \ln(x)$ → $du = \dfrac{1}{x} \, dx$
- $dv = dx$ → $v = x$

$$\int \ln(x) \, dx = \underbrace{x \cdot \ln(x)}_{uv} - \int \underbrace{x \cdot \frac{1}{x}}_{v \cdot du} \, dx$$

Agora, $x \cdot \dfrac{1}{x} = 1$, logo:

$$= x \cdot \ln(x) - \int 1 \, dx = x \cdot \ln(x) - x + C$$

> [!important] Esclarecimento da dúvida
> **Pergunta:** "integral de $\frac{1}{x}$ passa a $x$?"
> 
> **Não!** O que acontece é que o $x$ (de $v$) **multiplica** pelo $\frac{1}{x}$ (de $du$), e eles **cancelam-se**:
> $$\int \frac{1}{x} \cdot x \, dx = \int 1 \, dx = x$$

**Resumo visual:**

| Passo | Expressão |
|:------|:----------|
| Início | $\int \ln(x) \, dx$ |
| Por partes | $x \cdot \ln(x) - \int x \cdot \frac{1}{x} \, dx$ |
| Simplifica | $x \cdot \ln(x) - \int 1 \, dx$ |
| Primitiva de 1 | $x \cdot \ln(x) - x + C$ |
