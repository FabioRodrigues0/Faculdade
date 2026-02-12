# Faculdade — Instrucoes para Claude Code

## Estrutura do Projeto

Cada pasta na raiz corresponde a uma disciplina. Dentro de cada disciplina existe (ou devera existir) um ficheiro `DISCIPLINA.md` com:

- Contexto da disciplina (nome completo, professor, conteudo programatico)
- Como o professor estrutura testes/avaliacoes
- Padroes e convencoes especificas (ex: formato incremental dos testes de ISD)
- Notas sobre o que o utilizador costuma pedir (simulacoes de teste, correcoes, resumos, etc.)

### Disciplinas atuais

| Pasta    | Disciplina                                | Ficheiro de contexto  |
| -------- | ----------------------------------------- | --------------------- |
| `isd/`   | Introducao aos Sistemas Digitais          | `isd/DISCIPLINA.md`   |
| `am/`    | Analise Matematica                        | `am/DISCIPLINA.md`    |
| `amp/`   | Algoritmos e Modelacao de Programas       | `amp/DISCIPLINA.md`   |
| `alg/`   | Algebra Linear                            | `alg/DISCIPLINA.md`   |
| `acomp/` | Arquitetura e Organizacao de Computadores | `acomp/DISCIPLINA.md` |

## Formato dos Ficheiros

Todos os ficheiros `.md` devem ser compativeis com **Obsidian**:

- Usar callouts Obsidian: `> [!info]`, `> [!note]-`, `> [!important]`, `> [!warning]`
- Callouts com `-` sao colapsaveis (ex: `> [!note]- Espaco para resposta`)
- Formulas matematicas em LaTeX inline `$...$` ou bloco `$$...$$`
- Checkboxes com `- [ ]` e `- [x]`
- Ligacoes internas com `[[nome_do_ficheiro]]` quando aplicavel
- Diagramas em blocos de codigo mermaid quando necessario
- Tabelas em markdown padrao
- Nao usar acentos nos nomes de ficheiros

## Simulacoes de Teste (/create-test)

Ao gerar simulacoes de teste para qualquer disciplina:

1. Consultar primeiro o `DISCIPLINA.md` da disciplina para saber o formato do professor e como estrutura os testes
2. Seguir o estilo de avaliacao especifico (ex: ISD usa abordagem incremental com um unico cenario)
3. Manter cotacoes e estrutura coerentes com os testes reais
4. Gerar em `.md` formatado para Obsidian com espacos para resposta colapsaveis

## Correcoes de Testes

Ao corrigir respostas do utilizador:

- Comparar com o estilo e expectativas do professor (consultar ficheiros de correcao quando disponiveis)
- Ser honesto mas justo — nao criticar o que esta correto
- Fornecer as solucoes corretas com justificacao
- Guardar correcoes em ficheiros `.md` na pasta `testes/` da disciplina

## Notas Gerais

- Lingua: Portugues (Portugal), com UTF-8, para se ter os acentos e "ç" caso contrario não ira ser apresentado
- O utilizador usa Obsidian como gestor de notas
- Em `material_de_aula/` mete para ser possível se ajustar e ter conteúdo lado a lado como se fosse um livro, como foi ativado os css snippets em @.obsidian/snippets/code-wrap.css e possível
- Ficheiros de material de aula ficam em `material_de_aula/`
- Ficheiros de testes e simulacoes ficam em `testes/`
- Ao criar conteudo novo, verificar se ja existe algo semelhante para nao duplicar
