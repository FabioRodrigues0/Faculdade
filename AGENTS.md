# Faculdade — Instruções para Claude Code

IMPORTANTE:
- Usa o gemini-cli ao máximo que for possível (estando a dar timeout, deve ter acabado cota).

## Estrutura do Projeto (Zettelkasten)

O projeto segue o método Zettelkasten para permitir conexões entre conceitos de diferentes disciplinas.

```
/Faculdade
├── disciplinas/              # Índices (Structure Notes)
│   └── <SIGLA>.md            # Ex: ISD.md, AM1.md, ALG.md
├── materia/                  # Conceitos atómicos Zettelkasten
│   └── arquivo/              # Matéria pendente de revisão/filtro
├── aulas/                    # Notas de aulas por data (todas as disciplinas)
├── testes/
│   └── <sigla>/
│       ├── DISCIPLINA.md     # Contexto para geração de testes
│       ├── arquivo/          # Testes antigos (referência)
│       └── <simulações>/     # Simulações de teste
├── materiais_de_aula/
│   └── <sigla>/              # PDFs, slides, referências
├── trabalhos_praticos/
│   └── <sigla>/              # Trabalhos práticos organizados
└── exercicios/
    └── <sigla>/              # Exercícios de aula
```

### Tipos de Ficheiros

| Tipo | Localização | Função |
|------|-------------|--------|
| Zettel (conceito) | `materia/` | Conceito único atómico com links `[[...]]` |
| Structure Note | `disciplinas/` | Índice de navegação da disciplina |
| DISCIPLINA.md | `testes/<sigla>/` | Contexto para geração de testes |
| Notas de aula | `aulas/` | Por data, todas as disciplinas |

### Disciplinas Atuais

| Sigla | Nome | Índice | Contexto Testes |
|-------|------|--------|-----------------|
| ISD | Introdução aos Sistemas Digitais | `disciplinas/ISD.md` | `testes/isd/DISCIPLINA.md` |
| AM1 | Análise Matemática I | `disciplinas/AM1.md` | `testes/am1/DISCIPLINA.md` |
| ALG | Álgebra Linear | `disciplinas/ALG.md` | `testes/alg/DISCIPLINA.md` |
| AMP | Algoritmos e Modelação de Programas | `disciplinas/AMP.md` | `testes/amp/DISCIPLINA.md` |
| ACOMP | Arquitetura e Organização de Computadores | `disciplinas/ACOMP.md` | `testes/acomp/DISCIPLINA.md` |

## Matéria (Zettelkasten)

### Conceitos Atómicos
- Cada ficheiro em `materia/` representa UM conceito
- Usar links `[[conceito]]` para conexões entre conceitos
- Tags para categorizar por disciplina (`#AMI`, `#ISD`, etc.)
- Embeds `![[conceito#secção]]` para incluir definições

### Arquivo
- `materia/arquivo/` contém conceitos pendentes de revisão
- O utilizador revê, filtra e cria conexões manualmente
- Após validação, mover para `materia/`

## Formato dos Ficheiros

Todos os ficheiros `.md` devem ser compatíveis com **Obsidian**:

- Usar callouts Obsidian: `> [!info]`, `> [!note]-`, `> [!important]`, `> [!warning]`
- Callouts com `-` são colapsáveis (ex: `> [!note]- Espaço para resposta`)
- Fórmulas matemáticas em LaTeX inline `$...$` ou bloco `$$...$$`
- Checkboxes com `- [ ]` e `- [x]`
- Ligações internas com `[[nome_do_ficheiro]]` quando aplicável
- Diagramas em blocos de código mermaid quando necessário
- Tabelas em markdown padrão
- Não usar acentos nos nomes de ficheiros

## Simulações de Teste (/create-test)

Ao gerar simulações de teste para qualquer disciplina:

1. Consultar primeiro o `testes/<sigla>/DISCIPLINA.md` para saber o formato do professor
2. Seguir o estilo de avaliação específico (ex: ISD usa abordagem incremental com um único cenário)
3. Manter cotações e estrutura coerentes com os testes reais
4. Gerar em `.md` formatado para Obsidian com espaços para resposta colapsáveis
5. Guardar em `testes/<sigla>/`

## Correções de Testes

Ao corrigir respostas do utilizador:

- Comparar com o estilo e expectativas do professor (consultar ficheiros de correção quando disponíveis)
- Ser honesto mas justo — não criticar o que está correto
- Fornecer as soluções corretas com justificação
- Guardar correções em `testes/<sigla>/`

## Trabalhos Práticos

Cada trabalho prático tem:
- Pasta própria em `trabalhos_praticos/<sigla>/<nome_tp>/`
- Ficheiro `.md` com descrição, tags e lista de conteúdo
- Tags para pesquisa (ex: `#ISD`, `#trabalho-pratico`, `#logisim`)

## Notas Gerais

- Língua: Português (Portugal), com UTF-8
- O utilizador usa Obsidian como gestor de notas
- Em `materiais_de_aula/` o conteúdo deve permitir visualização lado a lado (modo livro do Obsidian)
- O snippet `.obsidian/snippets/code-wrap.css` garante que blocos de código fazem wrap
- Ao criar conteúdo novo, verificar se já existe algo semelhante para não duplicar
- Ver `MIGRACAO.md` para estado da migração e estrutura detalhada
