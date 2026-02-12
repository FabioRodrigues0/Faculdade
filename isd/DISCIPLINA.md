# Introdução aos Sistemas Digitais (ISD)

## Informação Geral

- **Sigla:** #ISD
- **Nome completo:** Introdução aos Sistemas Digitais

## Conteúdo Programático

- Conversão de bases numéricas
- Resistências e código de cores
- LEDs (calculo de resistências limitadoras)
- Portas lógicas e algebra booleana
- Tabelas de verdade e mapas de Karnaugh
- MUX/DEMUX (74LS151, 74LS153, etc.)
- Circuitos integrados TTL (família 74LS)
- Flip-flops (D e JK)
- Maquinas de estado (Moore e Mealy)
- Contadores e registos de deslocamento
- Displays de 7 segmentos
- VHDL (introdução)

## Formato dos Testes

> [!important] Abordagem Incremental
> O professor usa **UM unico cenario/tema** para todo o teste. Cada pergunta **incrementa a anterior** — a resposta de uma alinea e usada como base para a seguinte.
> **NAO usar cenarios independentes por pergunta.**

### Estrutura padrão (6 alíneas, 20 valores)

| Alinea | Cotacao   | Tipo                | Descricao                                                                                                               |           |
| ------ | --------- | ------------------- | ----------------------------------------------------------------------------------------------------------------------- | --------- |
| 1.1    | 2 valores | Diagrama de blocos  | Visao geral do sistema:                                                                                                 |           |
|        |           |                     | entradas, saidas, blocos principais. Identificar componente combinatoria vs sequencial                                  | 2 valores |
| 1.2    | 4 valores | Circuito principal  | Logica combinatoria (tabela verdade + Karnaugh)                                                                         |           |
|        |           |                     | OU maquina de estados Moore — e o nucleo do sistema                                                                     | 4 valores |
| 1.3    | 4 valores | Modificacao de 1.2  | Alterar/adaptar o circuito da alinea anterior                                                                           |           |
|        |           |                     | (ex: remover estado, mudar condicao, adicionar restricao)                                                               | 4 valores |
| 1.3    | 4 valores | Modificacao de 1.2  | Alterar/adaptar o circuito da alinea anterior                                                                           |           |
| 1.4    | 4 valores | Validacao/Acesso    | Flip-flops D para armazenamento OU VHDL — tipicamente validacao de PIN ou acesso                                        | 4 valores |
| 1.5    | 4 valores | Detecao/Alarme      | Maquina de estados Mealy para detetar padroes/sequencias — usa saidas de alineas anteriores como entrada                | 4 valores |
| 1.6    | 2 valores | Display 7 segmentos | Explicar o PRINCIPIO (sem concluir projeto) de como visualizar resultado num display. Usa estados de alineas anteriores |           |

### Regras do professor

1. Cada resposta so aborda a alinea atual — nao antecipar implementacoes de alineas futuras
2. 1.1 e sempre alto nivel — diagrama de blocos com entradas/saidas globais, sem circuitos detalhados
3. 1.6 e sempre conceptual — explicar o principio, nao concluir o projeto completo
4. Contexto realista — o professor usa cenarios do mundo real
5. A maquina de Moore/Mealy na 1.2 ou 1.5 e central — as outras alineas referem-se a ela
6. VHDL pode aparecer — tipicamente na 1.4 ou 1.5
7. O professor usa circuito de reset com condensador + resistencia nas aulas (tecnica pratica valorizada)

### Geracao de testes (/create-test para ISD)

1. Escolher UM tema/cenario unico e realista
2. Estruturar 6 alineas incrementais conforme o padrao acima
3. Cada alinea deve REFERENCIAR explicitamente resultados de alineas anteriores
4. Manter complexidade semelhante ao professor
5. Incluir: logica combinatoria, maquinas de estados (Moore E Mealy), flip-flops D, MUX/DEMUX, display 7 segmentos, opcionalmente VHDL

## Ficheiros de Referencia

- Testes do professor (2024-25): `testes/2024-25/`
- **Teste A** (enunciado, comentarios, correcao): `testes/2024-25/Teste Avaliacao A/`
- **Teste B** (enunciado, comentarios, correcao): `testes/2024-25/Teste Avaliacao B/`
- Resolucao em aula: `testes/DocScanner 11-02-2026 15-14.pdf` (pag 1-4 Teste A, pag 5-9 Teste B)
- Material de aula: `material_de_aula/`
