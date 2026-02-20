---
tags:
  - ISD
---

# Introdução aos Sistemas Digitais (ISD)

## Informação Geral

- **Sigla:** #ISD
- **Nome completo:** Introdução aos Sistemas Digitais

## Conteúdo Programático

- Conversão de bases numéricas
- Resistências e código de cores
- LEDs (cálculo de resistências limitadoras)
- Portas lógicas e álgebra booleana
- Tabelas de verdade e mapas de Karnaugh
- MUX/DEMUX (74LS151, 74LS153, etc.)
- Circuitos integrados TTL (família 74LS)
- Flip-flops (D e JK)
- Máquinas de estado (Moore e Mealy)
- Contadores e registos de deslocamento
- Displays de 7 segmentos
- VHDL (introdução)

## Formato dos Testes

> [!important] Abordagem Incremental
> O professor usa **UM único cenário/tema** para todo o teste. Cada pergunta **incrementa a anterior** — a resposta de uma alínea é usada como base para a seguinte.
> **NÃO usar cenários independentes por pergunta.**

### Estrutura padrão (6 alíneas, 20 valores)

| Alínea | Cotação   | Tipo                | Descrição                                                                                                               |
| ------ | --------- | ------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| 1.1    | 2 valores | Diagrama de blocos  | Visão geral do sistema: entradas, saídas, blocos principais. Identificar componente combinatória vs sequencial          |
| 1.2    | 4 valores | Circuito principal  | Lógica combinatória (tabela verdade + Karnaugh) OU máquina de estados Moore — é o núcleo do sistema                     |
| 1.3    | 4 valores | Modificação de 1.2  | Alterar/adaptar o circuito da alínea anterior (ex: remover estado, mudar condição, adicionar restrição)                 |
| 1.4    | 4 valores | Validação/Acesso    | Flip-flops D para armazenamento OU VHDL — tipicamente validação de PIN ou acesso                                        |
| 1.5    | 4 valores | Deteção/Alarme      | Máquina de estados Mealy para detetar padrões/sequências — usa saídas de alíneas anteriores como entrada                |
| 1.6    | 2 valores | Display 7 segmentos | Explicar o PRINCÍPIO (sem concluir projeto) de como visualizar resultado num display. Usa estados de alíneas anteriores |

### Regras do professor

1. Cada resposta só aborda a alínea atual — não antecipar implementações de alíneas futuras
2. 1.1 é sempre alto nível — diagrama de blocos com entradas/saídas globais, sem circuitos detalhados
3. 1.6 é sempre conceptual — explicar o princípio, não concluir o projeto completo
4. Contexto realista — o professor usa cenários do mundo real
5. A máquina de Moore/Mealy na 1.2 ou 1.5 é central — as outras alíneas referem-se a ela
6. VHDL pode aparecer — tipicamente na 1.4 ou 1.5
7. O professor usa circuito de reset com condensador + resistência nas aulas (técnica prática valorizada)

### Geração de testes (/create-test para ISD)

1. Escolher UM tema/cenário único e realista
2. Estruturar 6 alíneas incrementais conforme o padrão acima
3. Cada alínea deve REFERENCIAR explicitamente resultados de alíneas anteriores
4. Manter complexidade semelhante ao professor
5. Incluir: lógica combinatória, máquinas de estados (Moore E Mealy), flip-flops D, MUX/DEMUX, display 7 segmentos, opcionalmente VHDL

## Ficheiros de Referência

- Testes do professor (2024-25): `testes/2024-25/`
- **Teste A** (enunciado, comentários, correção): `testes/2024-25/Teste Avaliacao A/`
- **Teste B** (enunciado, comentários, correção): `testes/2024-25/Teste Avaliacao B/`
- Resolução em aula: `testes/DocScanner 11-02-2026 15-14.pdf` (pág 1-4 Teste A, pág 5-9 Teste B)
- Material de aula: `material_de_aula/`
