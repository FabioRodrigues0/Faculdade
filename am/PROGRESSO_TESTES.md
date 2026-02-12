# Progresso em Analise Matematica I

## Resumo

| Metrica | Inicio | Atual | Evolucao |
|---------|--------|-------|----------|
| **Nota estimada** | 5/20 | 5-11/20 | Variavel |
| **Assintotas** | 0% | **100%** | Resolvido |
| **Int. Por Partes** | 0% | V.4 correto! | Melhoria |
| **Erro der vs int** | Persiste | Persiste | Critico |

---

## Evolucao por Teste

| Teste | Nota | Assintotas | Int. Partes | Der vs Int | Limites | Areas |
|-------|------|-----------|-------------|------------|---------|-------|
| 1 (Prep) | ~5 | 0% | 0% | Confunde | Basico | N/A |
| 2 (Treino) | ~6 | 0% | 0% | Confunde | Basico | N/A |
| 3 (Final) | ~6 | 0% | 0% | Confunde | Basico | N/A |
| 4 (Pos-est) | ~11 | **100%** | 30% | Confunde | Bom | N/A |
| 5 (Areas) | ~8 | 100% | 20% | Confunde | Bom | 0% |
| **6 (Atual)** | **~5** | VA ok | **V.4 correto!** | **Confunde** | Medio | 0% |

> [!note] Contexto teste 6
> Nota baixa porque consultou material (estudo) e varios grupos em branco (derivadas inteiro, trigonometria). Ponto positivo real: integracao por partes V.4 executada sem erros pela primeira vez.

---

## Graficos de Evolucao

### Assintotas (SUCESSO!)
```
Teste 1: ░░░░░░░░░░ 0%
Teste 2: ░░░░░░░░░░ 0%
Teste 3: ░░░░░░░░░░ 0%
Teste 4: ██████████ 100%
Teste 5: ██████████ 100%
Teste 6: ██████░░░░ VA ok, obliqua errada
```

### Integracao por Partes
```
Teste 1: ░░░░░░░░░░ 0%
Teste 2: ░░░░░░░░░░ 0%
Teste 3: ░░░░░░░░░░ 0%
Teste 4: ███░░░░░░░ 30%
Teste 5: ██░░░░░░░░ 20%
Teste 6: █████░░░░░ V.4 perfeito, V.7 errado
```

### Integrais Definidos (PROBLEMA!)
```
Teste 1: ░░░░░░░░░░ 0%
Teste 2: ░░░░░░░░░░ 0%
Teste 3: ░░░░░░░░░░ 0%
Teste 4: ░░░░░░░░░░ 0% (deriva!)
Teste 5: ░░░░░░░░░░ 0% (deriva!)
Teste 6: ░░░░░░░░░░ 0% (deriva!)
```

### Nota Geral
```
Teste 1: ██░░░░░░░░ 5/20
Teste 2: ███░░░░░░░ 6/20
Teste 3: ███░░░░░░░ 6/20
Teste 4: █████░░░░░ 11/20
Teste 5: ████░░░░░░ 8/20
Teste 6: ██░░░░░░░░ 5/20 (estudo)
```

---

## Erros por Categoria

### Resolvidos
- **Assintotas** (0% → 100%) — verticais e horizontais dominadas

### Em Progresso
- **Int. por partes** (0% → acertou V.4) — escolha u/dv a melhorar
- **Reconhecimento termos** (20% → 60%)
- **Continuidade com k** — acertou no teste 6
- **L'Hopital** — acertou no teste 6

### Criticos (persistem)
- **Derivar em vez de integrar** — 0% progresso em 6 testes!
- **Fator cadeia em integrais** — esquece dividir pelo coeficiente (e^(2x)/2, sin(3x)/3)

### Por investigar
- **Assintotas obliquas** — errou m no teste 6 (disse m=0 quando m=1)
- **Bolzano** — usou formula resolvente em vez do teorema
- **Derivadas** — nao tentou no teste 6, sem dados recentes

---

**Ultima atualizacao:** 2026-02-12
