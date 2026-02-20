# Áreas com Integrais

> [!info] Tipos de problemas
> 1. Área entre uma curva e o eixo $x$
> 2. Área entre duas curvas

---

## Área entre curva e eixo x

### Fórmula básica

$$A = \int_a^b |f(x)| \, dx$$

> [!warning] Atenção ao sinal!
> Se $f(x) < 0$ no intervalo, o integral dá **negativo**.
> A área é sempre **positiva**, por isso usamos valor absoluto.

### Método

1. **Encontrar zeros:** Resolver $f(x) = 0$ para saber onde a curva cruza o eixo
2. **Determinar sinal:** Ver se $f(x) > 0$ ou $f(x) < 0$ em cada intervalo
3. **Calcular:** Se $f(x) \geq 0$: usar $\int_a^b f(x) dx$. Se $f(x) < 0$: usar $-\int_a^b f(x) dx$

---

### Exemplo 1: $y = x^2 - 4$ e eixo x

> [!example] Resolução passo a passo
> 
> **Passo 1: Encontrar zeros**
> $$x^2 - 4 = 0 \Rightarrow x^2 = 4 \Rightarrow x = \pm 2$$
> 
> A curva cruza o eixo em $x = -2$ e $x = 2$.
> 
> **Passo 2: Determinar sinal**
> - Testar $x = 0$: $f(0) = 0 - 4 = -4 < 0$
> - Entre $-2$ e $2$, a curva está **abaixo** do eixo x
> 
> **Passo 3: Calcular (com sinal negativo)**
> $$A = -\int_{-2}^{2} (x^2 - 4) \, dx = -\left[\frac{x^3}{3} - 4x\right]_{-2}^{2}$$
> 
> Avaliando:
> - Em $x = 2$: $\dfrac{8}{3} - 8 = \dfrac{8 - 24}{3} = -\dfrac{16}{3}$
> - Em $x = -2$: $\dfrac{-8}{3} - (-8) = -\dfrac{8}{3} + 8 = \dfrac{16}{3}$
> 
> $$A = -\left(-\frac{16}{3} - \frac{16}{3}\right) = -\left(-\frac{32}{3}\right) = \frac{32}{3}$$

---

## Área entre duas curvas

### Fórmula

$$A = \int_a^b |f(x) - g(x)| \, dx$$

Ou, se sabemos qual está por cima:

$$A = \int_a^b [\text{superior} - \text{inferior}] \, dx$$

### Método

1. **Encontrar interseções:** Resolver $f(x) = g(x)$ para obter $a$ e $b$
2. **Determinar qual está por cima:** Testar um ponto entre $a$ e $b$
3. **Calcular:** $\int_a^b [\text{cima} - \text{baixo}] dx$

---

### Exemplo 2: $y = x^2$ e $y = 2x$

> [!example] Resolução passo a passo
> 
> **Passo 1: Encontrar interseções**
> $$x^2 = 2x \Rightarrow x^2 - 2x = 0 \Rightarrow x(x - 2) = 0$$
> $$x = 0 \quad \text{ou} \quad x = 2$$
> 
> **Passo 2: Qual está por cima?**
> Testar $x = 1$ (ponto entre 0 e 2):
> - $f(1) = 1^2 = 1$
> - $g(1) = 2(1) = 2$
> 
> Como $g(1) > f(1)$, a reta $y = 2x$ está **por cima** da parábola $y = x^2$.
> 
> **Passo 3: Calcular**
> $$A = \int_0^2 (2x - x^2) \, dx = \left[x^2 - \frac{x^3}{3}\right]_0^2$$
> 
> Avaliando:
> - Em $x = 2$: $4 - \dfrac{8}{3} = \dfrac{12 - 8}{3} = \dfrac{4}{3}$
> - Em $x = 0$: $0 - 0 = 0$
> 
> $$A = \frac{4}{3} - 0 = \frac{4}{3}$$

---

### Exemplo 3: $y = 4 - x^2$ e $y = x + 2$

> [!example] Resolução passo a passo
> 
> **Passo 1: Encontrar interseções**
> $$4 - x^2 = x + 2 \Rightarrow -x^2 - x + 2 = 0 \Rightarrow x^2 + x - 2 = 0$$
> $$(x + 2)(x - 1) = 0 \Rightarrow x = -2 \quad \text{ou} \quad x = 1$$
> 
> **Passo 2: Qual está por cima?**
> Testar $x = 0$:
> - Parábola: $4 - 0 = 4$
> - Reta: $0 + 2 = 2$
> 
> A parábola $y = 4 - x^2$ está **por cima**.
> 
> **Passo 3: Calcular**
> $$A = \int_{-2}^{1} [(4 - x^2) - (x + 2)] \, dx = \int_{-2}^{1} (2 - x - x^2) \, dx$$
> 
> $$= \left[2x - \frac{x^2}{2} - \frac{x^3}{3}\right]_{-2}^{1}$$
> 
> - Em $x = 1$: $2 - \dfrac{1}{2} - \dfrac{1}{3} = \dfrac{12 - 3 - 2}{6} = \dfrac{7}{6}$
> - Em $x = -2$: $-4 - 2 + \dfrac{8}{3} = -6 + \dfrac{8}{3} = \dfrac{-18 + 8}{3} = -\dfrac{10}{3}$
> 
> $$A = \frac{7}{6} - \left(-\frac{10}{3}\right) = \frac{7}{6} + \frac{20}{6} = \frac{27}{6} = \frac{9}{2}$$

---

## Resumo do método

> [!tip] Checklist para áreas
> 
> **1. Limites não dados?**
> - [ ] Resolver $f(x) = 0$ (curva e eixo) ou $f(x) = g(x)$ (duas curvas)
> 
> **2. Qual está por cima?**
> - [ ] Testar um ponto entre os limites
> - [ ] A maior está por cima
> 
> **3. Calcular**
> - [ ] $\int_a^b [\text{superior} - \text{inferior}] dx$
> - [ ] Primitivar
> - [ ] Aplicar limites: $[F(x)]_a^b = F(b) - F(a)$
> 
> **4. Verificar**
> - [ ] Área deve ser **positiva**!

---

## Erros comuns

> [!danger] Não fazer!
> 
> | Erro | Correto |
> |------|---------|
> | Esquecer de encontrar interseções | Resolver $f = g$ primeiro |
> | Integrar $f - g$ quando $g > f$ | Verificar qual está por cima |
> | Área negativa | Área é sempre $\geq 0$ |
> | Esquecer limites no TFC | $[F(x)]_a^b = F(b) - F(a)$ |

---

## Exercícios para praticar

**1.** Encontre a área limitada pela curva $y = x^2 - 1$ e o eixo $x$.

> [!note]- Espaço para resposta

**2.** Determine a área da região limitada pelas curvas $y = x^2$ e $y = x$.

> [!note]- Espaço para resposta

**3.** Calcule a área entre $y = x^3$ e $y = x$ no primeiro quadrante.

> [!note]- Espaço para resposta
