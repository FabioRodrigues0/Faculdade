# Migração para Estrutura Zettelkasten

> [!info] Objetivo
> Reorganizar o projeto para seguir o método Zettelkasten, permitindo conexões entre conceitos de diferentes disciplinas em vez de silos isolados.

## Estrutura Final

```
/Faculdade
├── disciplinas/              # Índices (Structure Notes)
│   └── <SIGLA>.md            # Ex: ISD.md, AM1.md, ALG.md
├── materia/                  # Conceitos atómicos
│   └── arquivo/              # Matéria pendente de revisão/filtro
├── aulas/                    # Notas de aulas por data
├── testes/
│   └── <sigla>/
│       └── DISCIPLINA.md     # Contexto para geração de testes
├── materiais_de_aula/
│   └── <sigla>/              # PDFs, slides, referências
└── trabalhos_praticos/
    └── <sigla>/
```

---

## Estado por Disciplina

### ALG - Álgebra Linear

| Item | Estado |
|------|--------|
| **Migração** | ✅ Completa |
| **Índice** | `disciplinas/ALG.md` |
| **DISCIPLINA.md** | `testes/alg/DISCIPLINA.md` |
| **Materiais** | `materiais_de_aula/alg/` (PDFs, sebentas, fichas) |
| **Matéria** | Não tem conceitos md (apenas PDFs) |

**Pendente:** Nenhum

---

### AM1 - Análise Matemática I

| Item | Estado |
|------|--------|
| **Migração** | 🔄 Em progresso |
| **Índice** | `am/AM1.md` → mover para `disciplinas/AM1.md` |
| **DISCIPLINA.md** | `am/DISCIPLINA.md` → mover para `testes/am1/DISCIPLINA.md` |
| **Materiais** | PDFs já em `materiais_de_aula/am1/` |
| **Matéria** | Conceitos já em `materia/` (Função, Derivada, Integral, etc.) |

**Pendente:**

- [ ] Mover `am/AM1.md` para `disciplinas/AM1.md`
- [ ] Mover `am/DISCIPLINA.md` para `testes/am1/DISCIPLINA.md`
- [ ] Avaliar guias em `am/material_de_aula/`:
  - `guia_areas.md`
  - `guia_integracao_partes.md`
  - `guia_primitivas.md`
  - `guia_regra_quociente.md`
  - `guia_reta_tangente_extremos.md`
  - `guia_substituicao.md`
  - `notas_aula_funcoes_limites.md`
  - Decidir: extrair para `materia/` ou arquivar
- [ ] Atualizar links no índice
- [ ] Apagar pasta `am/`

---

### ISD - Introdução aos Sistemas Digitais

| Item | Estado |
|------|--------|
| **Migração** | ⏳ Não iniciada |
| **Índice** | `isd/ISD.md` → mover para `disciplinas/ISD.md` |
| **DISCIPLINA.md** | `isd/DISCIPLINA.md` → mover para `testes/isd/DISCIPLINA.md` |
| **Materiais** | `isd/material_de_aula/` → mover para `materiais_de_aula/isd/` |
| **Matéria** | Material é prático (circuitos), provavelmente não gera conceitos Zettelkasten |

**Pendente:**

- [ ] Mover `isd/ISD.md` para `disciplinas/ISD.md`
- [ ] Mover `isd/DISCIPLINA.md` para `testes/isd/DISCIPLINA.md`
- [ ] Mover `isd/material_de_aula/` para `materiais_de_aula/isd/`
- [ ] Mover `isd/testes/` para `testes/isd/`
- [ ] Mover `isd/trabalhos_praticos/` para `trabalhos_praticos/isd/`
- [ ] Mover `isd/exercicios/` (decidir destino)
- [ ] Atualizar todos os links no índice
- [ ] Apagar pasta `isd/`

---

### AMP - Algoritmos e Modelação de Programas

| Item | Estado |
|------|--------|
| **Migração** | ⏳ Não iniciada |
| **Índice** | `amp/AMP.md` → mover para `disciplinas/AMP.md` |
| **DISCIPLINA.md** | `amp/DISCIPLINA.md` → mover para `testes/amp/DISCIPLINA.md` |
| **Materiais** | `amp/material_de_aula/` → mover para `materiais_de_aula/amp/` |
| **Matéria** | Potenciais conceitos (algoritmos, estruturas de dados, Python) |

**Pendente:**

- [ ] Mover `amp/AMP.md` para `disciplinas/AMP.md`
- [ ] Mover `amp/DISCIPLINA.md` para `testes/amp/DISCIPLINA.md`
- [ ] Mover PDFs de `amp/material_de_aula/` para `materiais_de_aula/amp/`
- [ ] Avaliar se há conceitos a extrair para `materia/`:
  - Algoritmos
  - Estruturas de dados
  - Instruções condicionais/cíclicas
- [ ] Mover `amp/trabalhos_praticos/` para `trabalhos_praticos/amp/`
- [ ] Mover `amp/exercicios/` (decidir destino)
- [ ] Atualizar links no índice
- [ ] Apagar pasta `amp/`

---

### ACOMP - Arquitetura e Organização de Computadores

| Item | Estado |
|------|--------|
| **Migração** | ⏳ Não iniciada (conteúdo especial) |
| **Índice** | `acomp/ACOMP.md` → mover para `disciplinas/ACOMP.md` |
| **DISCIPLINA.md** | `acomp/DISCIPLINA.md` → mover para `testes/acomp/DISCIPLINA.md` |
| **Materiais** | `acomp/material_de_aula/` (PDFs) → `materiais_de_aula/acomp/` |
| **Matéria** | `acomp/aulas/` tem 7 aulas transcritas para extrair conceitos |

**Aulas transcritas a processar:**

| Ficheiro | Conteúdo |
|----------|----------|
| `Aula1_arquitetura_de_computadores.md` | Introdução à arquitetura |
| `Aula2_Sistemas_de_Numeração.md` | Sistemas de numeração |
| `Aula3_Assembly_MIPS.md` | Assembly MIPS básico |
| `Aula4_Assembly_Condicionais.md` | Condicionais em Assembly |
| `Aula4_Assembly_Ponto_Flutuante.md` | Ponto flutuante |
| `Aula5_Assembly_Laços_Repetição.md` | Laços de repetição |
| `Aula5_Assembly_MUL_DIV.md` | Multiplicação e divisão |
| `Aula6_Assembly_Condicionais.md` | Mais condicionais |
| `Aula7_Assembly_Laços_Repetição.md` | Mais laços |

**Pendente:**

- [ ] Extrair conceitos das aulas (Aula1-7) para `materia/arquivo/`
  - Separar por conceito individual
  - Colocar em arquivo para revisão manual posterior
- [ ] Mover PDFs de `acomp/material_de_aula/` para `materiais_de_aula/acomp/`
- [ ] Mover `acomp/ACOMP.md` para `disciplinas/ACOMP.md`
- [ ] Mover `acomp/DISCIPLINA.md` para `testes/acomp/DISCIPLINA.md`
- [ ] Mover `acomp/trabalhos_praticos/` para `trabalhos_praticos/acomp/`
- [ ] Mover `acomp/exercicios/` (decidir destino)
- [ ] Atualizar links no índice
- [ ] Apagar pasta `acomp/`

---

## Processo de Migração

### Para cada disciplina:

#### 1. Avaliar conteúdo

- [ ] Identificar conceitos → `materia/` ou `materia/arquivo/`
- [ ] Identificar referências (PDFs) → `materiais_de_aula/<sigla>/`
- [ ] Identificar testes/simulações → `testes/<sigla>/`
- [ ] Identificar trabalhos práticos → `trabalhos_praticos/<sigla>/`

#### 2. Mover ficheiros

- [ ] Mover índice para `disciplinas/<SIGLA>.md`
- [ ] Mover/criar `DISCIPLINA.md` em `testes/<sigla>/`
- [ ] Mover materiais para pastas corretas

#### 3. Atualizar links

- [ ] Corrigir todos os caminhos no ficheiro índice
- [ ] Verificar que links funcionam no Obsidian

#### 4. Limpar

- [ ] Verificar que tudo foi migrado
- [ ] Apagar pasta antiga da disciplina

---

## Notas Importantes

> [!warning] Conceitos em Arquivo
> Conteúdo em `materia/arquivo/` fica pendente de revisão manual.
> O utilizador revê, filtra e cria conexões entre conceitos.
> Após validação, mover para `materia/`.

> [!tip] Exercícios
> A pasta `exercicios/` de cada disciplina precisa de decisão:
> - Manter junto dos materiais?
> - Criar pasta global `exercicios/<sigla>/`?
> - Incluir nos trabalhos práticos?

> [!note] Links Relativos
> Ao mover ficheiros, todos os links `[[...]]` precisam ser atualizados.
> Obsidian pode ajudar com "Update links" ao renomear/mover ficheiros.
