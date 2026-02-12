# 📖 INTEGRAÇÃO POR PARTES DO ZERO - Guia Completo

## 🎯 ANTES DE COMEÇAR - O TEU ERRO

### ❌ O QUE FIZESTE (NOS 3 TESTES!):

```
∫ x · cos(x) dx = ∫ x dx + ∫ cos(x) dx = x²/2 + sen(x) + C
```

**ISTO ESTÁ ERRADO!** ❌❌❌

---

### 🔴 PORQUÊ ESTÁ ERRADO?

**Regra da SOMA funciona:**
$$\int [f(x) + g(x)] dx = \int f(x)dx + \int g(x)dx \quad ✓$$

**Exemplo:**
$$\int (x + \cos(x)) dx = \int x dx + \int \cos(x) dx = \frac{x^2}{2} + \sin(x) + C \quad ✓$$

---

**MAS regra do PRODUTO NÃO funciona:**
$$\int [f(x) \cdot g(x)] dx \neq \int f(x)dx \cdot \int g(x)dx \quad ✗$$

**Exemplo do teu erro:**
$$\int x \cdot \cos(x) dx \neq \int x dx \cdot \int \cos(x) dx \quad ✗$$

---

### 💡 ANALOGIA PARA PERCEBER O ERRO:

Imagina que tens que calcular:
- $(2 + 3) = 5$ → Soma funciona: $2 + 3 = 5$ ✓
- $(2 \times 3) = 6$ → Mas não podes fazer: $2 + 3 = 5$ ✗

**Operações diferentes têm regras diferentes!**

Da mesma forma:
- **Integral de SOMA:** Podes separar ✓
- **Integral de PRODUTO:** NÃO podes separar! ✗

---

### ✅ ENTÃO COMO SE FAZ?

Para integrais de **PRODUTOS** precisas de uma técnica especial:

# **INTEGRAÇÃO POR PARTES!**

---

## 📐 O QUE É INTEGRAÇÃO POR PARTES?

### 🎓 Conceito Intuitivo

Imagina que tens um produto $u \cdot v$ e queres derivar:

**Regra do Produto (derivadas):**
$$(u \cdot v)' = u' \cdot v + u \cdot v'$$

**Se integrares ambos os lados:**
$$\int (u \cdot v)' dx = \int [u' \cdot v + u \cdot v'] dx$$

$$u \cdot v = \int u' \cdot v \, dx + \int u \cdot v' dx$$

**Reorganizando:**
$$\int u \cdot v' dx = u \cdot v - \int v \cdot u' dx$$

---

## 🎯 FÓRMULA DE INTEGRAÇÃO POR PARTES

### Notação 1 (mais usada):
$$\boxed{\int u \, dv = uv - \int v \, du}$$

### Notação 2 (equivalente):
$$\boxed{\int f(x) \cdot g'(x) dx = f(x) \cdot g(x) - \int g(x) \cdot f'(x) dx}$$

---

## 🔍 QUANDO USAR?

**Use integração por partes quando tiver:**

✅ **PRODUTO de duas funções** onde:
- Uma é "fácil" de derivar
- Outra é "fácil" de integrar

**Exemplos típicos:**
- $\int x \cdot e^x dx$ → produto!
- $\int x \cdot \cos(x) dx$ → produto!
- $\int x^2 \cdot \sin(x) dx$ → produto!
- $\int \ln(x) dx$ → pode escrever como $\int 1 \cdot \ln(x) dx$
- $\int \arctan(x) dx$ → pode escrever como $\int 1 \cdot \arctan(x) dx$

---

## 📋 COMO ESCOLHER u E dv?

### Método ILATE (ou LIATE)

Escolhe $u$ pela **PRIMEIRA** que aparecer nesta lista:

| Ordem | Tipo de função | Escolha como $u$ |
|-------|----------------|------------------|
| **I** | **I**nversas (arctan, arcsen, ln) | 1ª escolha |
| **L** | **L**ogarítmicas (ln(x)) | 2ª escolha |
| **A** | **A**lgébricas (x, x², x³) | 3ª escolha |
| **T** | **T**rigonométricas (sen, cos) | 4ª escolha |
| **E** | **E**xponenciais (e^x) | 5ª escolha |

**O resto fica como $dv$!**

---

### 📝 Exemplo de Escolha:

**Problema:** $\int x \cdot e^x dx$

**Aplicar ILATE:**
- $x$ → Algébrica (A)
- $e^x$ → Exponencial (E)

**A vem ANTES de E → escolhe $u = x$**

**Portanto:**
- $u = x$ → $du = dx$
- $dv = e^x dx$ → $v = e^x$

---

## 💪 EXEMPLOS RESOLVIDOS PASSO A PASSO

---

### **EXEMPLO 1:** $\int x \cdot e^x dx$ (O TEU ERRO!)

**PASSO 1: Identificar u e dv**

Usar ILATE:
- $x$ é Algébrica (A)
- $e^x$ é Exponencial (E)

$A < E$ → $u = x$

$$\begin{cases}
u = x & \Rightarrow du = dx \\
dv = e^x dx & \Rightarrow v = e^x
\end{cases}$$

---

**PASSO 2: Aplicar fórmula**

$$\int u \, dv = uv - \int v \, du$$

$$\int x \cdot e^x dx = x \cdot e^x - \int e^x \cdot dx$$

---

**PASSO 3: Resolver integral que sobrou**

$$= x \cdot e^x - e^x + C$$

**PASSO 4: Simplificar (opcional)**

$$= e^x(x - 1) + C$$

---

**✅ RESPOSTA:** $\boxed{\int x \cdot e^x dx = e^x(x-1) + C}$

**⚠️ VERIFICA:** Deriva e confirma!
$$\frac{d}{dx}[e^x(x-1)] = e^x(x-1) + e^x \cdot 1 = e^x \cdot x \quad ✓$$

---

### **EXEMPLO 2:** $\int x \cdot \cos(x) dx$ (O TEU ERRO!)

**PASSO 1: Identificar u e dv**

ILATE:
- $x$ é Algébrica (A)
- $\cos(x)$ é Trigonométrica (T)

$A < T$ → $u = x$

$$\begin{cases}
u = x & \Rightarrow du = dx \\
dv = \cos(x) dx & \Rightarrow v = \sin(x)
\end{cases}$$

---

**PASSO 2: Aplicar fórmula**

$$\int x \cdot \cos(x) dx = x \cdot \sin(x) - \int \sin(x) \cdot dx$$

---

**PASSO 3: Resolver integral**

$$= x \sin(x) - (-\cos(x)) + C$$

$$= x \sin(x) + \cos(x) + C$$

---

**✅ RESPOSTA:** $\boxed{\int x \cos(x) dx = x\sin(x) + \cos(x) + C}$

**⚠️ O QUE FIZESTE (ERRADO):**
$$\int x dx + \int \cos(x) dx = \frac{x^2}{2} + \sin(x) + C \quad ✗$$

**Isto está ERRADO porque separaste um PRODUTO como SOMA!**

---

### **EXEMPLO 3:** $\int \ln(x) dx$ (Caso especial!)

**PASSO 1: Reescrever**

$$\int \ln(x) dx = \int 1 \cdot \ln(x) dx$$

Agora é um produto!

---

**PASSO 2: Identificar u e dv**

ILATE:
- $\ln(x)$ é Logarítmica (L)
- $1$ é Algébrica (A)

$L < A$ → $u = \ln(x)$

$$\begin{cases}
u = \ln(x) & \Rightarrow du = \frac{1}{x} dx \\
dv = 1 \cdot dx & \Rightarrow v = x
\end{cases}$$

---

**PASSO 3: Aplicar fórmula**

$$\int \ln(x) dx = x \cdot \ln(x) - \int x \cdot \frac{1}{x} dx$$

$$= x \ln(x) - \int 1 dx$$

$$= x \ln(x) - x + C$$

---

**✅ RESPOSTA:** $\boxed{\int \ln(x) dx = x\ln(x) - x + C}$

**⚠️ O QUE FIZESTE (ERRADO no teste):**
$$\int \ln(x) dx = \frac{1}{x} + C \quad ✗$$

**Confundiste com a DERIVADA:**
$$\frac{d}{dx}[\ln(x)] = \frac{1}{x} \quad \text{(isto é derivada, não integral!)}$$

---

### **EXEMPLO 4:** $\int x^2 \cdot e^x dx$ (Duas vezes!)

**PASSO 1: Primeira aplicação**

ILATE: $u = x^2$ (Algébrica)

$$\begin{cases}
u = x^2 & \Rightarrow du = 2x \, dx \\
dv = e^x dx & \Rightarrow v = e^x
\end{cases}$$

$$\int x^2 e^x dx = x^2 e^x - \int e^x \cdot 2x \, dx$$

$$= x^2 e^x - 2\int x e^x dx$$

---

**PASSO 2: Segunda aplicação** (no integral que sobrou)

Agora resolver $\int x e^x dx$ (já fizemos no Exemplo 1!):

$$\int x e^x dx = xe^x - e^x + C$$

---

**PASSO 3: Juntar tudo**

$$\int x^2 e^x dx = x^2 e^x - 2[xe^x - e^x] + C$$

$$= x^2 e^x - 2xe^x + 2e^x + C$$

$$= e^x(x^2 - 2x + 2) + C$$

---

**✅ RESPOSTA:** $\boxed{\int x^2 e^x dx = e^x(x^2 - 2x + 2) + C}$

---

### **EXEMPLO 5:** $\int x \cdot \sin(x) dx$

**PASSO 1: Identificar u e dv**

$$\begin{cases}
u = x & \Rightarrow du = dx \\
dv = \sin(x) dx & \Rightarrow v = -\cos(x)
\end{cases}$$

---

**PASSO 2: Aplicar**

$$\int x \sin(x) dx = x \cdot (-\cos(x)) - \int (-\cos(x)) \cdot dx$$

$$= -x\cos(x) + \int \cos(x) dx$$

$$= -x\cos(x) + \sin(x) + C$$

---

**✅ RESPOSTA:** $\boxed{\int x\sin(x) dx = -x\cos(x) + \sin(x) + C}$

---

### **EXEMPLO 6:** $\int x^2 \cdot \cos(x) dx$ (O TEU ERRO!)

**Duas aplicações necessárias!**

**Primeira aplicação:**

$$\begin{cases}
u = x^2 & \Rightarrow du = 2x \, dx \\
dv = \cos(x) dx & \Rightarrow v = \sin(x)
\end{cases}$$

$$\int x^2 \cos(x) dx = x^2 \sin(x) - \int \sin(x) \cdot 2x \, dx$$

$$= x^2 \sin(x) - 2\int x \sin(x) dx$$

---

**Segunda aplicação** (já fizemos no Exemplo 5):

$$\int x \sin(x) dx = -x\cos(x) + \sin(x) + C$$

---

**Juntar:**

$$\int x^2 \cos(x) dx = x^2 \sin(x) - 2[-x\cos(x) + \sin(x)] + C$$

$$= x^2 \sin(x) + 2x\cos(x) - 2\sin(x) + C$$

---

**✅ RESPOSTA:** $\boxed{\int x^2\cos(x) dx = x^2\sin(x) + 2x\cos(x) - 2\sin(x) + C}$

**⚠️ O QUE FIZESTE (ERRADO):**
$$\int x^2 dx + \int \cos(x) dx = \frac{x^3}{3} + \sin(x) + C \quad ✗$$

---

### **EXEMPLO 7:** $\int \arctan(x) dx$

**Reescrever:**
$$\int 1 \cdot \arctan(x) dx$$

**Identificar:**

ILATE: arctan é Inversa (I) → primeira escolha!

$$\begin{cases}
u = \arctan(x) & \Rightarrow du = \frac{1}{1+x^2} dx \\
dv = 1 \cdot dx & \Rightarrow v = x
\end{cases}$$

---

**Aplicar:**

$$\int \arctan(x) dx = x \cdot \arctan(x) - \int x \cdot \frac{1}{1+x^2} dx$$

---

**Resolver integral que sobrou** (substituição: $u = 1+x^2$):

$$\int \frac{x}{1+x^2} dx = \frac{1}{2}\ln(1+x^2) + C$$

---

**Juntar:**

$$\int \arctan(x) dx = x\arctan(x) - \frac{1}{2}\ln(1+x^2) + C$$

---

**✅ RESPOSTA:** $\boxed{\int \arctan(x) dx = x\arctan(x) - \frac{1}{2}\ln(1+x^2) + C}$

**⚠️ O QUE FIZESTE (ERRADO no teste):**
$$\int \arctan(x) dx = \frac{1}{1+x^2} + C \quad ✗$$

Confundiste com a **DERIVADA** de arctan!

---

## 📊 TABELA RESUMO - Casos Comuns

| Integral | u | dv | Resultado |
|----------|---|----|----|
| $\int x e^x dx$ | $x$ | $e^x dx$ | $e^x(x-1) + C$ |
| $\int x \cos(x) dx$ | $x$ | $\cos(x) dx$ | $x\sin(x) + \cos(x) + C$ |
| $\int x \sin(x) dx$ | $x$ | $\sin(x) dx$ | $-x\cos(x) + \sin(x) + C$ |
| $\int \ln(x) dx$ | $\ln(x)$ | $1 dx$ | $x\ln(x) - x + C$ |
| $\int x^2 e^x dx$ | $x^2$ | $e^x dx$ | $e^x(x^2-2x+2) + C$ |

---

## 🎯 ALGORITMO PASSO A PASSO

```
1. IDENTIFICAR se é produto de funções
   ↓
2. ESCOLHER u e dv usando ILATE
   • u = função que vem PRIMEIRO no ILATE
   • dv = o resto
   ↓
3. CALCULAR du e v
   • du = derivada de u
   • v = integral de dv
   ↓
4. APLICAR FÓRMULA
   ∫ u dv = uv - ∫ v du
   ↓
5. RESOLVER ∫ v du
   • Pode ser direto
   • Pode precisar de integração por partes OUTRA VEZ
   ↓
6. SIMPLIFICAR e adicionar + C
```

---

## ⚠️ ERROS COMUNS A EVITAR

### ❌ ERRO 1: Separar produtos como somas
```
ERRADO: ∫ x·cos(x) dx = ∫x dx + ∫cos(x) dx
CERTO: Usa integração por partes!
```

### ❌ ERRO 2: Confundir u e dv
```
ERRADO: u = e^x, dv = x dx (complica!)
CERTO: u = x, dv = e^x dx (simplifica!)
```

### ❌ ERRO 3: Esquecer o sinal
```
v = ∫sin(x) dx = -cos(x)  ← Não esquecer o negativo!
```

### ❌ ERRO 4: Não aplicar duas vezes quando necessário
```
∫x² cos(x) dx precisa de DUAS aplicações!
```

### ❌ ERRO 5: Confundir com derivada
```
∫ln(x) dx ≠ 1/x  (isso é a derivada!)
∫ln(x) dx = x·ln(x) - x + C
```

---

## 💪 EXERCÍCIOS PARA PRATICAR

### Nível 1 - Básico
Resolve usando integração por partes:

1. $\int x \cdot e^{2x} dx$
2. $\int x \cdot \sin(x) dx$
3. $\int \ln(2x) dx$

---

### Nível 2 - Médio
4. $\int x^2 \cdot \sin(x) dx$
5. $\int e^x \cdot \cos(x) dx$ (cíclico!)
6. $\int \arcsin(x) dx$

---

### Nível 3 - Avançado
7. $\int x^3 \cdot e^x dx$ (três vezes!)
8. $\int \ln(x^2) dx$
9. $\int x \cdot \arctan(x) dx$

---

## 🔑 SOLUÇÕES DOS EXERCÍCIOS

<details>
<summary>1. ∫x·e^(2x) dx</summary>

**Solução:**
- $u = x$, $du = dx$
- $dv = e^{2x} dx$, $v = \frac{e^{2x}}{2}$

$$\int x e^{2x} dx = x \cdot \frac{e^{2x}}{2} - \int \frac{e^{2x}}{2} dx$$

$$= \frac{x e^{2x}}{2} - \frac{e^{2x}}{4} + C$$

$$= \frac{e^{2x}}{4}(2x - 1) + C$$
</details>

<details>
<summary>3. ∫ln(2x) dx</summary>

**Solução:**
- $u = \ln(2x)$, $du = \frac{1}{x} dx$
- $dv = dx$, $v = x$

$$\int \ln(2x) dx = x\ln(2x) - \int x \cdot \frac{1}{x} dx$$

$$= x\ln(2x) - x + C$$
</details>

---

## 📝 CHECKLIST ANTES DE RESOLVER

Antes de começar, pergunta:

☐ É um produto de funções?  
☐ Identifiquei u usando ILATE?  
☐ Calculei du corretamente? (derivar u)  
☐ Calculei v corretamente? (integrar dv)  
☐ Apliquei a fórmula $\int u \, dv = uv - \int v \, du$?  
☐ O novo integral $\int v \, du$ é mais simples?  
☐ Preciso aplicar por partes outra vez?  
☐ Simplifiquei o resultado?  
☐ Adicionei + C?  

---

## 🎯 TESTE RÁPIDO DE COMPREENSÃO

### Questão 1:
Qual é o erro nesta resolução?
$$\int x \cos(x) dx = \int x dx \cdot \int \cos(x) dx = \frac{x^2}{2} \cdot \sin(x) + C$$

<details>
<summary>Resposta</summary>

**ERRO:** Não podes separar produtos! E multiplicou os integrais (também errado)!

**CORRETO:** Usa integração por partes!
$$\int x\cos(x) dx = x\sin(x) + \cos(x) + C$$
</details>

---

### Questão 2:
Para $\int x^2 \ln(x) dx$, qual deve ser u?

a) $x^2$  
b) $\ln(x)$

<details>
<summary>Resposta</summary>

**b) ln(x)**

ILATE: L (logarítmica) vem ANTES de A (algébrica)!
</details>

---

### Questão 3:
Verdadeiro ou Falso: $\int \ln(x) dx = \frac{1}{x} + C$

<details>
<summary>Resposta</summary>

**FALSO!**

$\frac{1}{x}$ é a **DERIVADA** de $\ln(x)$!

**CORRETO:** $\int \ln(x) dx = x\ln(x) - x + C$
</details>

---

## 🎓 RESUMO FINAL

### ✅ LEMBRA-TE:

1. **NÃO podes separar produtos!**
   $$\int f \cdot g \neq \int f + \int g$$

2. **Fórmula mágica:**
   $$\int u \, dv = uv - \int v \, du$$

3. **ILATE para escolher u:**
   **I**nversa → **L**og → **A**lgébrica → **T**rig → **E**xponencial

4. **Derivada ≠ Integral**
   - Derivada de $\ln(x)$ = $\frac{1}{x}$
   - Integral de $\ln(x)$ = $x\ln(x) - x + C$

5. **Às vezes precisas aplicar 2x ou 3x!**

---

## 🚀 PRÓXIMOS PASSOS

**AGORA:**
1. ✅ Relê este guia com atenção
2. ✅ Faz os 9 exercícios propostos
3. ✅ Verifica as soluções

**AMANHÃ:**
1. 📝 Faz um mini-teste só de integrais por partes
2. 📊 Compara com os teus erros anteriores
3. 🎯 Identifica se aprendeste ou memorizaste!

---

**Boa sorte! Agora já sabes integração por partes! 💪🔥**

**Lembra-te:** NUNCA MAIS separes produtos como somas! 😊
