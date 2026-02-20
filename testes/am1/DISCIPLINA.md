---
tags:
  - AMI
---

# Análise Matemática I (AMI)

## Informação Geral

- **Sigla:** #AMI
- **Nome completo:** Análise Matemática I
- **Curso:** Engenharia Informática - Licenciatura
- **Instituição:** ISPGAYA

## Conteúdo Programático

### Funções e Domínios
- Domínios de funções (racionais, radicais, logarítmicas)
- Funções inversas (bijetivas, injetivas, sobrejetivas)
- Composição de funções

### Limites e Continuidade
- Cálculo de limites (indeterminações)
- Limites laterais
- Continuidade em pontos (determinar k)
- Teorema de Bolzano
- Teorema de Weierstrass

### Assíntotas
- Assíntotas verticais (limites laterais)
- Assíntotas horizontais (limites no infinito)
- Assíntotas oblíquas

### Derivadas
- Definição formal (limites)
- Regras de derivação (produto, quociente, cadeia)
- Derivadas de funções compostas (regra da cadeia)
- Derivada da função inversa
- Aplicações: reta tangente, extremos, pontos de inflexão

### Integrais Indefinidos
- Primitivas básicas (xⁿ, eˣ, 1/x, trigonométricas)
- Integração por substituição
- **Integração por partes** (∫u dv = uv - ∫v du)
- Integrais trigonométricos

### Integrais Definidos e Áreas
- Teorema Fundamental do Cálculo
- Cálculo de áreas (curva + eixo x, entre duas curvas)
- Primitivas com condições iniciais

### Teoremas
- Teorema de Rolle
- Teorema de Lagrange (Valor Médio)
- Regra de L'Hospital

### Equações Trigonométricas
- Resolução de sen(x) = k, cos(x) = k, tan(x) = k
- Fórmulas gerais de solução

## Materiais Permitidos no Teste

### Tabela de Primitivas (fornecida)
**Conteúdo:**
- Funções trigonométricas inversas: ∫1/(1+x²)dx = arctan(x) + C
- Funções trigonométricas inversas: ∫1/√(1-x²)dx = arcsin(x) + C
- Integrais de sin(ax), cos(ax), sin²(x), cos²(x)
- Integrais com composição: ∫f'(x)/(1+f(x)²)dx, etc.

**NÃO TEM (precisa decorar):**
- ❌ ∫xⁿ dx = x^(n+1)/(n+1) + C
- ❌ ∫k dx = kx + C
- ❌ ∫eˣ dx = eˣ + C
- ❌ ∫(1/x) dx = ln|x| + C

## Formato dos Testes

### Estrutura
- **Teste grande:** ~10 alíneas numeradas (sem grupos/secções separadas)
- **Teste pequeno:** ~6 alíneas numeradas
- NÃO usar "Grupo I", "Grupo II", etc. — usar apenas alíneas numeradas (1, 2, 3...) e (a,b,c) para alíneas aninhadas

### Estilo das Perguntas (baseado nas listas da professora)

#### Estrutura típica dos enunciados
```
Introdução da função:
  "Seja f : R → R definida por f(x) = ..."
  "Considere a função f definida por f(x) = ..."
  "Seja f uma função de domínio R definida por f(x) = ..."
  "Dada a função f(x) = ..."

Pedido:
  "Determine..." / "Calcule..." / "Encontre..."
  "Mostre que..." / "Verifique se..."
  "Indique..." / "Obtenha..."

Condicionais:
  "...caso exista." / "...caso existam."
  "...se existirem."
  "...tal que..."
  "...no ponto de abcissa x = ..."

Justificação:
  "Justifique a sua resposta."
  "Justifique."
```

#### Vocabulário específico da professora
| Usa | NÃO usa |
|-----|---------|
| "zero da função" | "raiz" |
| "primitiva" | "antiderivada" |
| "no ponto de abcissa x = a" | "no ponto x = a" |
| "família de todas as primitivas" | "integral geral" |
| "lei de formação" | "expressão" |
| "contínua em x = a" | "contínua no ponto a" |
| ]a, b[ (intervalo aberto) | (a, b) |

#### Frases de contexto típicas
```
"A partir das seguintes definições, resolva o que se pede."
"Após esta lembrança, ..."
"Partindo destas definições e considerando a função..."
"Sabendo que..." (para dar informação extra)
"Utilizando o Teorema de Bolzano, mostre que..."
"Utilizando a tabela de integrais fornecida..."
```

#### Verbos típicos nos enunciados
- "Determine..." (mais comum)
- "Calcule..."
- "Mostre que..." (para Bolzano, existência de zeros)
- "Verifique se..." (continuidade, injetividade)
- "Indique..." (para primitiva específica)
- "Encontre..." (para áreas)

#### Domínios — Enunciado típico
```
"Determine o domínio de cada uma das funções, justificando a sua resposta."

a) f(x) = 5x³ - x² + 2
b) r(x) = 1/(x² - 4)
c) h(x) = √(3x - 2)
d) f(x) = 1/√(x² - 4)
e) k(x) = √(2x+1)/(x-3)
f) f(x) = ln(x² - 1)
```

#### Limites — Enunciados típicos
```
"Calcule:" (seguido de lista)

a) lim(x→2) (3x + 5)⁵
b) lim(x→3) (x - 3)/(x² - 9)
c) lim(x→4) (√x - 2)/(x - 4)
d) lim(x→+∞) (3x² - x + 1)/(2x² + 5)
e) lim(x→2⁺) (x² + 3x)/(x² - 4)
```

#### Continuidade com parâmetro — Enunciado típico
```
"Determine L para que a função dada seja contínua no ponto dado. Justifique."

f(x) = { (x² - x)/x,  se x ≥ 0
       { L,           se x < 0
```
ou
```
"Seja f : R → R definida por:

f(x) = { (x² - 9)/(x - 3),  se x ≠ 3
       { k,                  se x = 3

Determine o valor de k para que f seja contínua em x = 3."
```

#### Bolzano — Enunciado típico
```
"Seja h uma função de domínio R definida por h(x) = x³ + x² + x - 2. 
A função possui pelo menos um zero no intervalo ]-1, 1[?"
```
ou
```
"Utilizando o Teorema de Bolzano, mostre que a função f(x) = x³ - 2x - 5 
tem pelo menos um zero no intervalo [2, 3]."
```
**Nota:** Usar "zero" ou "zeros da função", NUNCA "raiz"

#### Assíntotas — Enunciado típico
```
"Determine, se existirem, as assíntotas da função f(x) = x²/(x² + 4)."
```
ou
```
"Determine as assíntotas horizontais e verticais, caso existam, 
do gráfico da função g(x) = (x + 3)/(2 - x)."
```
ou
```
"Considere a função racional f(x) = (x² - 1)/(5x - 4) e determine 
a assíntota oblíqua desta função, caso exista."
```

#### Derivadas — Enunciados típicos
```
Derivar lista:
"Em cada uma das alíneas que se seguem, determine a função derivada 
da função considerada."

Derivada num ponto:
"Calcule a derivada da função f(x) = (3x² + 4x - 83)/(x - 1), no ponto x = 2."

Reta tangente:
"Escreva uma equação da reta tangente ao gráfico da função f 
definida por f(x) = √x no ponto de abcissa 4."

Extremos:
"Determine os extremos das funções:"
a) f(x) = x³ - 27x + 1
b) f(x) = -x³ + 6x² - 12x + 8

Pontos de inflexão:
"Encontre os pontos de inflexão do gráfico da função f(x) = x³ - 6x² + 9x + 1 
e determine a concavidade do gráfico."
```

#### Integrais indefinidos — Enunciado típico (SEM indicar método!)
```
"Determine os seguintes integrais indefinidos:"

a) ∫(3x² + 5x + 7) dx
b) ∫(3x²)/(1 + x³) dx
c) ∫x·eˣ dx                    ← por partes (NÃO dizer!)
d) ∫ln(x) dx                   ← por partes (NÃO dizer!)
e) ∫(arctg x)/(1 + x²) dx
```

#### Integrais definidos — Enunciado típico
```
"Calcule as seguintes integrais definidas:"

a) ∫₋₃⁰ (x² - 4x + 7) dx
b) ∫₁ᵉ (1/x) dx
c) ∫₀² x·e⁻ˣ dx
```

#### Primitiva com condição inicial — Enunciados típicos
```
"Determine a primitiva F para a função f(x) = 2/x + 3/x² tal que F(-1) = 1."
```
ou
```
"Indique a primitiva da função g que se anula para x = e."
```
ou
```
"Determine a primitiva da função f definida por f(x) = 3cos(ln x)/x 
que toma o valor 2 em x = 1."
```

#### Áreas — Enunciados típicos

> [!warning] IMPORTANTE para testes gerados
> **SEMPRE dar os limites de integração** no enunciado.
> O aluno ainda está a aprender a encontrar interseções, por isso os limites devem ser fornecidos.

```
Com limites explícitos (USAR ESTE FORMATO):
"Calcule a área limitada por y = x² e y = 2x no intervalo [0, 2]."
"Encontre a área limitada pela curva y = 4 - x² e o eixo x, entre x = -2 e x = 2."
"Determine a área limitada pelos gráficos y = 8/x, y = x², x = 1, x = 4."
```

#### Equações trigonométricas — Enunciado típico
```
"Resolva, em R, a equação:"
ou
"Resolva a equação no intervalo [0, 2π[:"

cos(x) = 1/2
```

### Características dos testes da professora
- Mistura métodos SEM dicas ([POR PARTES] não aparece!)
- Números "simpáticos" (2, 3, 4, não 2.7 ou √5)
- Foco em integrais (~40% do teste)
- Sempre tem áreas (importante!)
- Testa reconhecimento de termos
- Usa "zeros" para Bolzano (NUNCA "raiz")
- Funções por ramos são frequentes
- Pede justificação: "Justifique a sua resposta."
- Usa notação ]a, b[ para intervalos abertos
- Introduz funções com "Seja f..." ou "Considere a função f definida por..."
- Usa "no ponto de abcissa x = a" (não apenas "no ponto a")
- Condicionais: "caso exista", "se existirem", "tal que"

## Ficheiros de Referência

### Listas de exercícios (Joana Becker Paulo e Mafalda Correia)
- `Lista1AMI25-26.pdf` — Funções (injetiva/sobrejetiva/bijetiva), inversa, domínios, logaritmos, exponenciais
- `Lista2AMI25-26.pdf` — Limites, continuidade, limites laterais, assíntotas, Bolzano, Weierstrass
- `Lista3AMI25-26.pdf` — Derivadas (definição, regras, cadeia, inversa), reta tangente, extremos, Rolle, Lagrange, L'Hôpital
- `Lista4AMI25-26.pdf` — Integrais indefinidos, por partes, definidos, áreas, tabela trigonométrica fornecida

### Testes realizados (cronológico)
1. `teste_ami_preparacao.pdf` - Teste inicial (nota: ~5/20)
2. `teste_ami_treino_2.pdf` - Segundo teste (nota: ~6/20)
3. `teste_ami_final.pdf` - Terceiro teste (nota: ~6/20)
4. `teste_ami_pos_estudo.pdf` - Após estudo assíntotas (nota: ~11/20)
5. `teste_ami_hoje_com_areas.pdf` - Teste com áreas (nota: ~8/20)

### Guias de estudo criados
- `guia_integracao_por_partes.md` - Método completo + exemplos
- `guia_reconhecimento_termos.md` - Extremos, reta tangente, áreas
- `exercicios_reconhecimento_termos.md` - Prática de identificação
- `guia_simples_topicos_confusos.md` - Continuidade k, regra cadeia, "e"
- `guia_urgente_derivada_vs_integral.md` - Diferenças críticas
- `primitivas_para_decorar.md` - 4 fórmulas + exercícios
- `sistema_stop_automatismo.md` - Quebrar piloto automático
- `sistema_usa_a_tabela.md` - Forçar consulta da tabela
- `sistema_nao_esta_na_tabela.md` - Decisão quando não tem

### Exemplos trigonométricos
- `exemplos_funcao_seno.md` - Equações sen(x), arcsen
- `exemplos_funcao_tangente.md` - Equações tan(x), arctan

### Correções
- `analise_comparativa_3_testes.md` - Análise detalhada testes 1-3
- `correcao_teste_pos_estudo.md` - Correção teste 4
- `correcao_teste_hoje.md` - Correção teste 5

---

> [!note] Progresso pessoal
> Ver `testes/PROGRESSO_TESTES.md` para erros identificados, técnicas desenvolvidas, estratégias e evolução.
