---
date: 06-10-2025
tags:
  - AMI
---

### Definição:
A **função inversa** $f^{-1}$ de uma [[Função|função]] $f$ é a função que "desfaz" o que $f$ faz. Se $f(a) = b$, então $f^{-1}(b) = a$.

$$f^{-1}(f(x)) = x \quad \text{e} \quad f(f^{-1}(x)) = x$$

---

## Condição de Existência

> [!important] Uma função só tem inversa se for **[[Injetiva]]** (ou [[Bijetiva]])!
> 
> Cada $y$ do [[Contradomínio]] corresponde a um único $x$ do [[Domínio]].

**Teste gráfico:** Uma reta horizontal corta o gráfico no máximo uma vez.

---

## Propriedades de $f^{-1}$

| Propriedade | Relação |
|-------------|---------|
| Domínio de $f^{-1}$ | $\mathcal{D}_{f^{-1}} = \mathcal{CD}_f$ |
| Contradomínio de $f^{-1}$ | $\mathcal{CD}_{f^{-1}} = \mathcal{D}_f$ |
| Gráfico | Simétrico ao de $f$ em relação à reta $y = x$ |

```desmos-graph
left=-2; right=6;
top=6; bottom=-2;
---
y=2x-1|blue|label:f(x)
y=\frac{x+1}{2}|red|label:f⁻¹(x)
y=x|black|dashed
```

---

## Algoritmo para Calcular a Inversa

1. **Escrever** $y = f(x)$
2. **Isolar** $x$ em função de $y$
3. **Trocar** $x \leftrightarrow y$

---

## Exemplos

### Exemplo 1: $f(x) = 3x - 5$

**Passo 1:** $y = 3x - 5$

**Passo 2:** Isolar $x$
$$y + 5 = 3x \Rightarrow x = \frac{y + 5}{3}$$

**Passo 3:** Trocar variáveis
$$f^{-1}(x) = \frac{x + 5}{3}$$

**Verificação:**
$$f(f^{-1}(x)) = 3 \cdot \frac{x+5}{3} - 5 = x + 5 - 5 = x \quad \checkmark$$

---

### Exemplo 2: $h(x) = \dfrac{2x}{x - 1}$

**Passo 1:** $y = \dfrac{2x}{x - 1}$

**Passo 2:** Isolar $x$
$$y(x - 1) = 2x$$
$$yx - y = 2x$$
$$yx - 2x = y$$
$$x(y - 2) = y$$
$$x = \frac{y}{y - 2}$$

**Passo 3:** Trocar variáveis
$$h^{-1}(x) = \frac{x}{x - 2}$$

**Domínios:**
- $\mathcal{D}_h = \mathbb{R} \setminus \{1\}$
- $\mathcal{D}_{h^{-1}} = \mathbb{R} \setminus \{2\}$

---

## Inversas Importantes

| Função $f(x)$ | Inversa $f^{-1}(x)$ |
|---------------|---------------------|
| $e^x$ | $\ln(x)$ |
| $\ln(x)$ | $e^x$ |
| $a^x$ | $\log_a(x)$ |
| $x^2$ (para $x \geq 0$) | $\sqrt{x}$ |
| $\sin(x)$ (restrito) | $\arcsin(x)$ |
| $\cos(x)$ (restrito) | $\arccos(x)$ |
| $\tan(x)$ (restrito) | $\arctan(x)$ |

> [!warning] $x^2$ só tem inversa se restringirmos o domínio!
> Para $x \geq 0$: inversa é $\sqrt{x}$
> Para $x \leq 0$: inversa é $-\sqrt{x}$

---

## Domínios das Inversas Exponencial/Logarítmica

| Função | Domínio | Contradomínio |
|--------|---------|---------------|
| $f(x) = e^x$ | $\mathbb{R}$ | $\mathbb{R}^+$ |
| $f^{-1}(x) = \ln(x)$ | $\mathbb{R}^+$ | $\mathbb{R}$ |

Os domínios e contradomínios trocam!

---

## Erros Comuns

> [!danger] Não confundir!
> 
> | Notação | Significado |
> |---------|-------------|
> | $f^{-1}(x)$ | Função inversa |
> | $\dfrac{1}{f(x)}$ | Inverso multiplicativo |
> 
> $$f^{-1}(x) \neq \frac{1}{f(x)}$$

---

## Related Topics
- [[Injetiva]]
- [[Bijetiva]]
- [[Domínio]]
- [[Contradomínio]]
