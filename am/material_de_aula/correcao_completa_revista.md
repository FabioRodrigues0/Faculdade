# CORREÇÃO COMPLETA DO TESTE AMI - Análise Detalhada REVISTA

## RESUMO RÁPIDO
Vou agora corrigir **TODAS** as questões que fizeste, incluindo as que saltei antes!

---

## IMAGEM 1 - Questões 1-4

### Questão 1 - Funções (Bijetividade e Inversa)
**1a) Prove que f é bijetiva**
- **Resposta:** Texto vermelho no topo (difícil de ler completamente)
- **Estado:** ⊗ Incompleto/não avaliável
- **Nota:** Precisavas provar injetividade E sobrejetividade

**1b) Determine f⁻¹(x)**
- **Resposta:** "Não me lembro como fica a imagem"
- **Estado:** ⊗ NÃO RESPONDEU

**1c) Interseções com eixos**
- **Resposta:** "Não sei"
- **Estado:** ⊗ NÃO RESPONDEU

---

### Questão 2 - DOMÍNIOS ✓ Já corrigida
**2a)** ✓ CORRETO - $D_f = \mathbb{R} \setminus \{-2, 2\}$

**2b)** ✓ CORRETO - $D_f = [\frac{2}{3}, +\infty[$

**2c)** ✗ INCORRETO (mas disseste que era isso que querias dizer)
- O teu conceito está certo, só a notação que ficou mal
- Querias: $D_f = [-\frac{1}{2}, 3[ \cup ]3, +\infty[$

**2d)** ⊗ INCOMPLETO
- Começaste mas não terminaste a resolução da inequação

---

### Questão 3 - Logaritmos
**3a) (1/2)log₂(x) - log₂(√x) + 1 = -1**
- **Estado:** ⊗ NÃO ENCONTREI RESPOSTA CLARA

**3b) (eˣ - e⁻ˣ)/(eˣ + e⁻ˣ) = 1/3**
- **Estado:** ⊗ NÃO ENCONTREI RESPOSTA CLARA

---

### Questão 4 - Determinar a e b
**f(x) = a + e^(bx), com f(1)=5 e f(2)=7**
- **Resposta:** Vejo "Tenho que descobrir valor do a"
- Depois: "Tinha que fazer f(1) e f(2) para ver os 4 e 5 de funções"
- **Estado:** ⊗ INCOMPLETO - sabias o método mas não concluíste

---

## IMAGEM 2 - Questões 5-8

### Questão 5 - LIMITES (vou corrigir tudo!)

**5a)** ⊗ Não vejo esta questão

**5b) lim(x→4) (√x - 2)/(x - 4)**
- **Tua resposta:** Substituição direta deu 6/0 (?)
- **Estado:** ✗ INCORRETO
- **Problema:** Forma indeterminada 0/0! Não podes só substituir.
- **Solução:** Precisas multiplicar pelo conjugado ou L'Hospital

**Resultado correto:** $\frac{1}{4}$
- **NOTA TUA:** Disseste que fizeste substituição e deu certo, mas pela imagem vejo 6/0 que está errado

**5c) lim(x→+∞) (x³ + 3x - 1)/(2x² + x + 1)**
- **Resposta:** Tens riscado em vermelho, nota sobre não variar
- **Estado:** ⊗ INCOMPLETO
- **Solução:** Divide tudo por x² (maior grau do denominador)
  $$\lim_{x \to +\infty} \frac{x + 3/x - 1/x²}{2 + 1/x + 1/x²} = \frac{+\infty}{2} = +\infty$$

**5d) lim(x→3⁺) (x² + x + 2)/(x² - 2x - 3)** ← ENCONTREI!
- **Tua resposta:** 
  - Simplificaste: $(x² + x + 2)/(x² - 2x - 3) = (x + 2)/(x - 3)$ ✗ ERRO!
  - Calculaste: $(3 + 2)/(3² - 3) = 5/(9-3) = 5/6$ (valores errados)
  - Resultado final: 5/3
  - Nota: "Dúvida se é assim pq cálculo do 3+"
- **Estado:** ✗ INCORRETO
- **Erro 1:** A simplificação está **ERRADA**! Não podes simplificar assim!
- **Erro 2:** Os cálculos também estão confusos
- **Solução correta:**
$$\lim_{x \to 3^+} \frac{x^2 + x + 2}{x^2 - 2x - 3} = \lim_{x \to 3^+} \frac{x^2 + x + 2}{(x-3)(x+1)}$$

Numerador em x=3: $9 + 3 + 2 = 14$

Denominador: $(3-3)(3+1) = 0^+ \cdot 4 = 0^+$

$$= \frac{14}{0^+} = +\infty$$

---

### Questão 6 - Continuidade (L para p=0)
**f(x) = {(x²-x)/x se x≥0; L se x<0}**
- **Resposta:** "Não me lembro"
- **Estado:** ⊗ NÃO RESPONDEU

---

### Questão 7 - Continuidade com parâmetro k ← ENCONTREI!
**f(x) = {7x-2 se x≥1; kx² se x<1}**
- **Tua resposta:** Vejo cálculos confusos
  - f(1) = 7(1) - 2 = 5
  - Depois k = 2 (?) "ASSUMO"
- **Estado:** ~ TENTATIVA MAS CONFUSA
- **Solução correta:**

Para continuidade em $x=1$:

$$\lim_{x \to 1^-} kx^2 = \lim_{x \to 1^+} (7x-2)$$

$$k(1)^2 = 7(1) - 2$$

$$k = 5$$

**Avaliação:** Sabias o conceito mas os cálculos ficaram confusos. $k = 5$, não $k = 2$!

---

### Questão 8 - ASSÍNTOTAS ← ENCONTREI!

**8a) g(x) = (x+3)/(2-x) - assíntotas**
- **Tua resposta:** 
  - g(1) = (1+3)/(2-1) = 4/1 = 4
  - 4 ≠ 0
- **Estado:** ✗ MÉTODO ERRADO!
- **Problema:** Não estás a calcular assíntotas! Estás a avaliar a função num ponto!
- **Solução correta:**
- **Vertical:** $x = 2$ (denominador = 0)
- **Horizontal:** 
$$\lim_{x \to \pm\infty} \frac{x+3}{2-x} = \lim_{x \to \pm\infty} \frac{1 + 3/x}{2/x - 1} = \frac{1}{-1} = -1$$
- **Assíntota horizontal:** $y = -1$

**8b) f(x) = x²/(x²+4) - assíntotas**
- **Tua resposta:**
  - f(1) = 1²/(1²+4) = 1/5
  - 1 ≠ 0  
- **Estado:** ✗ MESMO ERRO!
- **Solução correta:**
- **Vertical:** Nenhuma (denominador nunca é zero)
- **Horizontal:** 
$$\lim_{x \to \pm\infty} \frac{x^2}{x^2+4} = \lim_{x \to \pm\infty} \frac{1}{1 + 4/x^2} = 1$$
- **Assíntota horizontal:** $y = 1$

**CONCLUSÃO Q8:** Não percebeste o conceito de assíntotas! Assíntotas são retas que a função aproxima no infinito ou perto de descontinuidades, não são avaliações pontuais!

---

## IMAGEM 3 - Questões 9-14

### Questão 9 - Bolzano ✓ JÁ CORRIGIDA
✓ **CORRETO!** Muito bem aplicado!

---

### Questão 10 - Bolzano aplicação
**f(x) = 2x + ∛x, mostrar que f(x)=5 tem solução em [1,8]**
- **Estado:** ⊗ NÃO ENCONTREI RESPOSTA

---

### Questão 11 - Derivada pela definição ← ENCONTREI!
**f(x) = x² - 3x, f'(x) no ponto x=3**
- **Tua resposta:**
  - g'(x) = 2x - 3
  - g'(3) = 2(3) - 3 = 6 - 3 = 3
  - g'(3) = 3
- **Estado:** ⚠️ **MÉTODO ERRADO MAS RESULTADO CERTO!**
- **Problema:** Pediam pela **definição de derivada** (limite)! Tu usaste as regras diretas
- **Definição:**
  $$f'(3) = \lim_{h \to 0} \frac{f(3+h) - f(3)}{h}$$
  $$= \lim_{h \to 0} \frac{[(3+h)² - 3(3+h)] - [9 - 9]}{h}$$
  $$= \lim_{h \to 0} \frac{9 + 6h + h² - 9 - 3h}{h}$$
  $$= \lim_{h \to 0} \frac{3h + h²}{h} = \lim_{h \to 0} (3 + h) = 3$$
- **Resultado:** 3 ✓ mas método errado!

---

### Questão 12 - Reta tangente
**f(x) = x³ + 1, ponto p=1**
- **Resposta:** "Não me lembro"
- **Estado:** ⊗ NÃO RESPONDEU

---

### Questão 13 - Derivadas ← REVI MELHOR!

**13a) f(x) = (x-1)(x²+3x)**
- **Tua resposta:** (1)(2x + 3) = 2x + 3
- **Estado:** ✗ **MUITO INCORRETO!**
- **Problema:** Aplicaste mal a regra do produto! Falta a segunda parte!
- **Correto:** 
  $$f'(x) = (1)(x²+3x) + (x-1)(2x+3)$$
  $$= x² + 3x + 2x² + 3x - 2x - 3$$
  $$= 3x² + 4x - 3$$

**13b) f(x) = cos(x)/(1-sen(x))**
- **Resposta:** "possível ser TAN(x), mas não me lembro"
- **Estado:** ⊗ NÃO RESPONDEU ADEQUADAMENTE
- **Dica:** Usa regra do quociente!

**13c) f(x) = arcsen(1/x²)**
- **Resposta:** "Não me lembro"
- **Estado:** ⊗ NÃO RESPONDEU

**13d) f(x) = x²e^(x²)** ✓ JÁ CORRIGIDA
- ✗ Falta regra da cadeia ao derivar e^(x²)

**13e) f(x) = (1-x²)ln(x)** ✓ JÁ CORRIGIDA
- ✗ Regra do produto mal aplicada

---

### Questão 14 - Derivada da inversa ✓ JÁ CORRIGIDA
- ✗ Incompleto - faltou encontrar x₀

---

## IMAGEM 4 - Questões 15-25

### Questões 15-17
**15) Extremos**
**16) Pontos de inflexão**  
**17) Teorema de Rolle**
- **Estado:** ⊗ "Não me lembro" / "Não me lembro" / "Não sei"

---

### Questão 18 - L'Hospital
**18a,b,c,d)**
- **Resposta:** Linhas mas nada claro
- **Nota:** "Vem 1a dos que substituir mas não lembro"
- **Estado:** ⊗ NÃO RESPONDEU ADEQUADAMENTE

---

### Questão 19 - Integrais indefinidos ← ENCONTREI AS QUE FIZESTE!

**19a) ∫(3x² + 5x + 7)dx**
- **Tua resposta:** $5x + 5 + C$
- **Estado:** ✗ **MUITO INCORRETO!**
- **Correção:**
$$\int (3x^2 + 5x + 7)dx = x^3 + \frac{5x^2}{2} + 7x + C$$
- **Teu erro:** Não integraste nada! Só copiaste parte da função!

**19b)** Riscado - "Não sei"

**19c)** "Não sei"

**19d) ∫ x³/(1+x⁸)dx**
- **Tua resposta:** (riscado) "$\frac{1}{y} \times \frac{1}{1+(x^4)^2} \Rightarrow \frac{1}{y} \arctan(x^4)$"
- **Estado:** ⚠️ **IDEIA CERTA MAS INCOMPLETO!**
- **Correção:** 

Substituição: $u = x^4$, $du = 4x^3dx$

$$\int \frac{x^3}{1+x^8}dx = \frac{1}{4}\int \frac{1}{1+u^2}du = \frac{1}{4}\arctan(u) + C$$

$$= \frac{1}{4}\arctan(x^4) + C$$

**Faltou:** O fator $\frac{1}{4}$!

---

### Questões 20-21 - Integrais com substituição e primitivas
**Estado:** ⊗ Maioria "Não sei"

---

### Questão 22 - Integração por partes ← ENCONTREI!

**22a)** "Não sei"

**22b) ∫ln(x)dx**
- **Tua resposta:** Vejo algo escrito mas difícil de ler
- **Estado:** ? PRECISO VER MELHOR
- **Solução:** 
$$\int \ln(x)dx = x\ln(x) - x + C$$

**22c)** "Não sei"

**22d) ∫arctg(x)dx**
- **Tua resposta:** "$\frac{1}{1+x^2}$"
- **Estado:** ✗ **INCORRETO!**
- **Problema:** Escreveste a **derivada** de $\arctan(x)$, não o integral!
- **Correção:**
$$\int \arctan(x)dx = x\arctan(x) - \frac{1}{2}\ln(1+x^2) + C$$

---

### Questões 23-25 - Integrais definidos e áreas
**Estado:** ⊗ NÃO RESPONDEU

---

## ANÁLISE FINAL REVISTA

### ✅ O QUE FIZESTE BEM:
- Domínios 2a, 2b (conceito certo na 2c)
- Teorema de Bolzano (Q9)
- Conceito de continuidade (Q7) - sabias o que fazer

### ⚠️ TENTATIVAS COM ERROS:
- Q5d (limite) - simplificação errada
- Q7 (continuidade) - cálculo confuso, k=5 não k=2
- Q11 (derivada) - resultado certo mas método errado
- Q13a (derivada produto) - muito incompleta
- Q19d (integral) - ideia certa, faltou 1/4

### ❌ ERROS CONCEITUAIS GRAVES:
- **Q5b:** Forma indeterminada 0/0 requer técnica especial!
- **Q8a, 8b:** NÃO SABES O QUE SÃO ASSÍNTOTAS! Gravíssimo!
- **Q13a:** Regra do produto muito mal aplicada
- **Q19a:** Nem tentaste integrar, só copiaste!
- **Q22d:** Confundes derivada com integral!

### ⊗ NÃO FIZESTE:
- Integrais (maioria)
- L'Hospital
- Extremos, pontos de inflexão, Rolle
- ~50% do teste

---

## PRIORIDADES DE ESTUDO - REVISTA

### 🔴 URGENTE (não sabes):
1. **O QUE SÃO ASSÍNTOTAS!** ← Muito grave!
2. **Integrais básicos** - não sabes integrar!
3. **Regra do produto** (derivadas) - aplicação errada
4. **Formas indeterminadas** em limites

### 🟠 IMPORTANTE (sabes mas com erros):
5. Regra da cadeia em derivadas compostas
6. Integração por partes (confundes com derivadas)
7. Derivada pela definição formal
8. Simplificação de funções racionais

### 🟢 REFORÇAR (conceito ok, execução fraca):
9. Continuidade com parâmetros
10. Resolução completa de inequações
11. Derivada da função inversa

---

## NOTA ESTIMADA REVISTA

**Questões tentadas:** ~45% do teste
**Taxa de acerto nas tentadas:** ~30-35%
**Nota estimada:** **4-5/20**

**Maior problema:** Falta de conhecimentos básicos (assíntotas, integrais) e confusão entre conceitos (derivada ≠ integral).

---

## RECOMENDAÇÃO FORTE

Antes de fazer outro teste, TENS QUE:

1. **Aprender o que são assíntotas** do zero
2. **Tabela de integrais básicos** memorizada
3. **Regra do produto** derivadas - treinar 20x
4. **Distinguir** derivada de integral (não é o mesmo!)
5. **Formas indeterminadas** 0/0, ∞/∞ - técnicas

Queres que crie:
- 📚 **Guia "Assíntotas do Zero"**?
- 📊 **Tabela de Integrais Essenciais**?
- 💪 **20 Exercícios de Regra do Produto**?
