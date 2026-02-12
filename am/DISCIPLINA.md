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

## Erros Sistemáticos Identificados

### 1. 🔴 CRÍTICO: Confundir Derivada com Integral
**Problema:** Vai no "piloto automático" e deriva quando devia integrar
**Exemplo:** ∫(x² + 4x) dx = 2x + 4 ❌ (é derivada!)
**Correto:** ∫(x² + 4x) dx = x³/3 + 2x² + C ✓
**Frequência:** Ocorre em TODOS os testes quando primitiva não está na tabela
**Causa:** Automatismo - não verifica se vê ∫ ou d/dx

### 2. 🔴 GRAVE: Integração por Partes (0% até teste pós-estudo)
**Problema:** Separa produtos como somas: ∫x·cos(x) = ∫x + ∫cos(x) ❌
**Ou:** Confunde método (identifica mal f e g')
**Fórmula:** ∫u dv = uv - ∫v du (método ILATE)
**Progresso:** De 0% → 30% (sabe ideia mas erra execução)

### 3. ⚠️ Assíntotas (melhorou!)
**Problema inicial:** Avaliava em pontos em vez de calcular limites
**Exemplo erro:** f(1) em vez de lim(x→1) f(x)
**Progresso:** 0% → 100% ✅ (RESOLVIDO após estudo!)

### 4. ⚠️ Não reconhecer termos
**Problema:** Não associa palavras ao método
- "Determine os extremos" → não sabe que é f'(x) = 0
- "Reta tangente" → não associa a derivada
- "Área limitada" → não associa a integral
**Solução:** Guias de reconhecimento criados

### 5. ⚠️ Continuidade com parâmetro k
**Problema:** Nunca viu este tipo, fica confuso
**Método:** lim(x→a) f(x) = k (simples!)

### 6. ⚠️ Regra da Cadeia
**Problema:** Esquece de multiplicar pela derivada interior
**Exemplo:** d/dx[cos(3x²)] = -sen(3x²) ❌ (falta ·6x)
**Correto:** d/dx[cos(3x²)] = -6x·sen(3x²) ✓

## Sistemas e Técnicas Desenvolvidas

### Sistema STOP (para automatismo derivada/integral)
```
VÊS ∫?
↓
1. 🛑 PARA! (caneta no ar)
2. 👀 ∫ ou d/dx?
3. ⭕ FAZ CÍRCULO à volta
4. 📝 ESCREVE "INT" ou "DER"
5. ✅ SÓ AGORA calcula!
```

### Sistema "Não está na tabela?"
```
VÊS ∫?
↓
1. PROCURA na tabela primeiro
   ├─ Está? → COPIA!
   └─ NÃO está? → PARA! → Usa decorada
2. Verifica: AUMENTEI expoente? (integral ✓)
   Ou DIMINUI? (derivada ❌)
```

### Cartões para colar na tabela
1. **CAPA:** "VÊS ∫? ABRE-ME!"
2. **DENTRO:** Fórmulas decoradas (xⁿ, k, eˣ, 1/x)
3. **DENTRO:** "NÃO ESTÁ? PARA! USA DECORADA!"

### Guias de Reconhecimento de Termos
**Extremos/Máximos/Mínimos:** f'(x) = 0 → f''(x) para classificar
**Reta Tangente:** m = f'(x₀), depois y - y₀ = m(x - x₀)
**Área limitada:** ∫ₐᵇ |f(x)| dx ou ∫[superior - inferior]

## Formato dos Testes

### Estrutura
- **Teste grande:** ~10 alineas numeradas (sem grupos/seccoes separadas)
- **Teste pequeno:** ~6 alineas numeradas
- NAO usar "Grupo I", "Grupo II", etc. — usar apenas alíneas numeradas (1, 2, 3...) e (a,b,c) para alíneas aninhadas, evitar por muitas aninhadas. 

### Conteudo tipico das alineas
- Dominios, função inversa, composição
- Limites (indeterminacoes, limites notaveis)
- Continuidade com parametro k
- Bolzano (dizer "zeros" ou "se ha zeros entre", NUNCA "raiz")
- Assintotas (verticais, horizontais, obliquas)
- Derivadas (produto, quociente, cadeia) + aplicacoes (reta tangente, extremos)
- Integrais indefinidos (misturados, incluindo por partes SEM dizer)
- Integrais definidos
- Areas (curva+eixo, entre curvas)
- Trigonometria

**Total:** ~10 questoes, ~20 valores (teste grande)

### Caracteristicas dos testes do professor
- Mistura metodos SEM dicas ([POR PARTES] nao aparece!)
- Numeros diferentes entre testes
- Foco em integrais (40% do teste)
- Sempre tem areas (importante!)
- Testa reconhecimento de termos
- Usa "zeros" e "se ha zeros entre" (NAO "raiz") para Bolzano

## Ficheiros de Referência

### Listas de exercícios
- `Lista1AMI2526.pdf` - Funções, limites, continuidade
- `Lista2AMI2526.pdf` - Derivadas e aplicações
- `Lista3AMI2526.pdf` - Integrais indefinidos
- `Lista4AMI2526.pdf` - Integrais definidos e áreas

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

## Prioridades de Estudo

### 🔴 URGENTE (antes de cada teste)
1. **DECORAR** 4 primitivas básicas (xⁿ, k, eˣ, 1/x)
2. **COLAR** cartões na tabela
3. **PRATICAR** Sistema STOP 20x
4. **REVER** guia reconhecimento termos

### 🟠 IMPORTANTE (estudo contínuo)
1. Integração por partes (prática, prática, prática!)
2. Áreas (pelo menos 2 tipos)
3. Regra da cadeia (função dentro de função)
4. Continuidade com k (método simples)

### 🟡 QUANDO TIVER TEMPO
1. Teoremas (Rolle, Lagrange, L'Hospital)
2. Equações trigonométricas avançadas
3. Pontos de inflexão

## Estratégia para o Próximo Teste

### Dia antes
- [ ] Recitar 4 primitivas decoradas 10x
- [ ] Verificar cartões colados na tabela
- [ ] Ler guia reconhecimento termos 1x
- [ ] Dormir bem!

### Início do teste
- [ ] Escrever "🛑 STOP!" no canto da folha
- [ ] Respirar 3x
- [ ] Pensar: "∫ = AUMENTAR expoente"

### Durante cada questão
- [ ] Ver símbolo: ∫ ou d/dx?
- [ ] Se ∫ → Fazer círculo ⭕ → Escrever "INT"
- [ ] Procurar na tabela SEMPRE
- [ ] Se não está → 🛑 PARA! → Usa decorada
- [ ] Verificar: aumentei expoente? (integral ✓)

### Fim do teste
- [ ] Verificar: fiz STOP em todos os ∫?
- [ ] Verificar: consultei tabela?
- [ ] Verificar: não derivei integrais?

## Evolução Geral

| Teste | Nota estimada | Assíntotas | Int. Por Partes | Int. Definidos | Áreas |
|-------|---------------|------------|-----------------|----------------|-------|
| Preparação | 5/20 | 0% | 0% | 0% | 0% |
| Treino 2 | 6/20 | 0% | 0% | 0% | N/A |
| Final | 6/20 | 0% | 0% | 0% | N/A |
| Pós-estudo | 11/20 | **100%** ✅ | 30% | 0% ❌ | N/A |
| Hoje | 8/20 | 100% ✅ | 20% | 0% ❌ | 0% |

**Progresso:** +6 pontos desde início! 📈
**Problema crítico:** Confusão derivada/integral persiste!

## Notas Importantes

### ⚠️ Lembrar sempre
- Tabela TEM trigonométricas, NÃO TEM xⁿ
- ∫ ≠ derivada (são OPOSTOS!)
- Integral = AUMENTAR expoente (↑)
- Derivada = DIMINUIR expoente (↓)
- Integração por partes: NUNCA separar produto como soma!

### ✅ O que já dominas
- Teorema de Bolzano
- Função inversa (cálculo)
- Limites simples
- **Assíntotas!** (grande vitória! 🎉)

### 🎯 Foco próximo teste
1. NÃO derivar quando vê ∫ (Sistema STOP!)
2. Usar tabela SEMPRE
3. Decorar 4 primitivas
4. Reconhecer termos ("extremos", "tangente", "área")

---

**Última atualização:** 2026-02-12
**Próximo teste:** TBD
**Meta:** 14/20 (subir mais 6 pontos!)
