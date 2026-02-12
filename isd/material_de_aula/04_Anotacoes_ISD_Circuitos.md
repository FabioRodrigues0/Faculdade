# Anotações - Sistemas Digitais (ISD)
**Curso:** Engenharia Informática
**Disciplina:** Introdução aos Sistemas Digitais
**Tipo:** Complemento ao caderno digitalizado
**Tópicos relacionados:** [[01_Conversao_de_Bases]], [[05_Teoria_MUX_DEMUX]], [[06_Slides_MUX_DEMUX]], [[07_Circuitos_Integrados_TTL]], [[03_LED]], [[02_Resistencias]], [[08_VHDL]], [[99_guia_estudo_isd]]

---

## 📄 Página 1 - MUX 4:1 com 3 Variáveis

### Exercício 1: Implementação
**Função:** F = A·B·C + Ā·B̄·C̄ + A·B̄·C̄

**Componentes desenhados:**
- Tabela verdade com colunas A, B, C e F
- Circuito com ENABLE
- Notas: "Se podermos ignorar uma das variáveis então é possível implementar"

### Conceitos Importantes
- **ENABLE**: Ativa/desativa o circuito (quando A está ativo ligo a saída, se não está não liga)
- **3 variáveis → MUX 4:1**: Possível se uma variável puder ser "ignorada" ou usada como entrada

### Diagrama do circuito
- Entradas: A, B, C
- Saídas marcadas como (A), (B), (C)
- Blocos ENABLE desenhados

**⚠️ IMPORTANTE:** 
- Ao isolar C, verificar se é possível usar apenas MUX 4:1
- Necessário inverter o sinal de C se usado como entrada direta

---

## 📄 Página 2 - Implementação com MUX 4:1

### Exercício (continuação)
**Objetivo:** IMPLEMENTAR c/ MUX 4:1 (Se possível)

**Expressão:** F = ABC + ĀB̄C̄ + AB̄C̄

### Processo
**Passo 1:** Fatorizar a expressão
- F = B(AC + ĀC̄ + AC̄)

**Circuito desenhado:**
- Inputs: B (como variável de controlo)
- Entradas: A, C
- Diagrama com portas lógicas conectadas ao MUX

**Tabela verdade simplificada:**
- Mostra relações entre B e saídas
- Permite implementação com MUX 4:1

---

## 📄 Página 3 - Multiplexer ↔ Demultiplexer

### Componentes desenhados
- **CH3, CH2, CH1, CH0** - 4 Canais
- **ENABLE** - ON/OFF (ativa/desativa circuito)
- **A₁, A₀** - Seleção (indicadores da posição)

### Notas da página
**ENABLE →** ~~NASSISTA~~ ON / OFF
**CH...→** CANAIS onde informação circula na ocorrência
**A...→** INDICADORES DA POSIÇÃO, a cada 4 contém autentar, 1 implicador

**MULTIPLEXER** também conhecido Por MUX  
**DEMULTIPLEXER** também conhecido Par DEMUX

### Diagramas MUX 4:1 e DEMUX 4:1
(Ver desenhos no caderno)

### Nota do Laboratório
**Importante:** No laboratório, considere que se **pretende transmitir o sinal** de 3 sensores exteriores para uma **zona** do laboratório, reconhecimento e acionamento de um canal.

**Aplicação prática:** 
- Sensores → MUX → processamento
- Processamento → DEMUX → atuadores

**Comparação/Repetição:**
- 0,0 - 1,0 (se repete)

---

## 📄 Página 4 - MUX como Gerador de Funções

### Título: "MUX como GERADOR de funções"

### Tabela Verdade
| A | B | F |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### Circuito desenhado
**Componentes:**
- Entradas: CH0, CH1, CH2, CH3
- Controlo: A, B
- Conexões para gerar função lógica específica

### Exercício MUX 8:1

**Tabela de verdade expandida:**
| A | B | C | F |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

### Diagramas
- Mostra conexão entre entradas A, B, C
- Marcações 0/1 ou OV/O (níveis de tensão)
- Canais CH2, CH6, CH7
- Sinais de controlo A₀, A₁, A₂

**Nota:** OV = 0V (nível lógico baixo), fCV/1 = tensão alta (nível lógico alto)

---

## 📄 Página 5 - Implementação do Multiplexador Interno

### Título: "Implementação do Multiplexador Interno"

### Componentes desenhados
**4 blocos principais:**
- EN (Enable) - portas A2, A1
- CH0, CH1, CH2, CH3

### Circuito interno
- Múltiplas portas AND ligadas
- Estrutura em cascata
- Saídas convergem para lógica final

### Estrutura típica MUX 4:1
```
EN ──┐
A₁ ──┤
A₀ ──┘
     │
CH0 ─┼─┐
CH1 ─┤ │
CH2 ─┤ ├──→ OUT
CH3 ─┘ │
       │
    [Lógica AND/OR]
```

**Lógica interna:**
- Cada canal passa por porta AND com sinais de seleção
- Saídas das ANDs vão para OR final
- EN controla se circuito está ativo

---

## 📄 Página 6 - Sistema Digital que Controla um Automóvel

### Título: "Sistema digital que controla um automóvel"

### Sensores (3 tipos de erro)
1. **ODD ERROR** - Erro ímpar
2. **Fatal ERROR** - Erro fatal  
3. **S&W ERROR** - Erro de software

### Objetivo
**Ao sair** deve ser ativada quando "Fatal Error" **OU** "ODD Error"  
**Abnete** - condição quando erro está resetado em simultâneo

### Tabela Verdade (i)
| A | B | C | Saída |
|---|---|---|-------|
| 0 | 0 | 0 | X0    |
| 0 | 0 | 1 | 1     |
| 0 | 1 | 1 | 1     |
| 1 | 0 | 0 | 0     |
| 1 | 0 | 1 | 1     |
| 1 | 1 | 0 | -     |
| 1 | 1 | 1 | 1     |

### Circuitos desenhados (ii, iii, iv)
**Múltiplas implementações:**
- Portas lógicas (AND, OR)
- Diferentes combinações de A, B, C
- Implementações equivalentes da mesma função

**Marcações:**
- A ─┐
- C ─┤ → Saída
- B ─┘

---

## 📄 Página 7 - Implementações de Circuitos (iii, iv)

### Diagrama iii
**Estrutura:**
- Entradas: A, B, C
- Múltiplas portas lógicas em cascata
- Combinação de sinais D0 (derivados)

### Diagrama iv
**Similar ao iii mas com:**
- Configuração diferente de portas
- Possivelmente simplificação do circuito

**Objetivo:** Mostrar implementações equivalentes da mesma função lógica

---

## 📄 Página 8 - Circuito de MUX 8:1 e 4:1

### v) Circuito de MUX 8:1

**Tabela de mapeamento:**
```
A B C | Canal
0 0 0 | C0
0 0 1 | C1
0 1 0 | C2
0 1 1 | C3
1 0 0 | C4
1 0 1 | C5
1 1 0 | C6
1 1 1 | C7
```

**Entradas de controlo:** A, B, C

### vi) Circuito de MUX 4:1

**Nota:** E/N (Enable)

**Estrutura mais simples:**
- Menos canais (4 vs 8)
- 2 sinais de controlo (vs 3)

---

## 📄 Página 9 - Mapas de Karnaugh

### Conceito
**Mapas de Karnaugh** - Método gráfico para simplificação de funções booleanas

### 2 Variáveis → D² (linhas totais verdade)

**Exemplo:**
```
    B
A   0  1
0 | 0  1 |
1 | 1  1 |
```

### Agrupamentos no Mapa Karnaugh

#### 4 Quadrículas (2² linhas)
**8 Quadrículas** (2³ = 8)

**Tabela de evolução:**
| A | B | C | F |
|---|---|---|---|
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

### 3 var = 2³ linhas = 8 quadrículas

**Mapa 3 variáveis:**
```
      BC
A    00  01  11  10
0  | 1   0   1   1  |
1  | 0   0   1   0  |
```

### 4 var = 2⁴ → M.K 16 quadrículas

**Mapa 4 variáveis:**
```
        CD
AB    00  01  11  10
00  |  •   •   •   •  |
01  |  •   •   •   •  |
11  |  •   •   •   •  |
10  |  •   •   •   •  |
```

**Tabela completa A, B, C, D, F:**
| A | B | C | D | F |
| - | - | - | - | - |
| 0 | 0 | 0 | 0 | 1 |
| 0 | 0 | 0 | 1 | 0 |
| ... | ... | ... | ... | ... |

### Expressão Final
**F = ABCD + ABCD̄**

---

## 📄 Página 10 - Simplificação com Karnaugh

### A Gavamentos (Agrupamentos)

**Regra fundamental:**
(1) **Agrupar o maior número possível de 1's** nas potências de 2

**Tipos de potências:**
- horizontal
- vertical
- bloco
- **B** (marcado em círculo)

**Exemplos:**
- F = A (para certos agrupamentos)
- Para F = B + D

### Casos sem possíveis agrupamentos
```
    D
0 | 0  0  1 |
1 | 0  0  0 |
```
**Resultado:** F = AB̄ + ĀD

### Outro exemplo
```
    C
0 | 1  0  0 |
1 | 1  1  1 |
```
**Resultado:** F = A

### Exemplo complexo
```
   BC   D
00 01 11 10
1  1  0  0  | → F = B̄
0  0  1  0  |
```

### Expressões finais mostradas
- F = ĀB̄C̄ + ĀB̄D̄ + ABC̄D
- Formas simplificadas usando agrupamentos

**⚠️ IMPORTANTE:** Sempre agrupar em potências de 2 (1, 2, 4, 8, 16...)

---

## 📄 Página 11 - Circuitos Integrados 74 Series (TTL)

### Família 74LC (Low-power CMOS)

**Notas importantes:**
- 74LC = GHz (alta frequência)
- GHz ⇒ ECL (Emitter-Coupled Logic)

### CIs TTL comuns

#### X04 - 74LC86 (XOR)
- **Função:** Porta XOR exclusiva
- **Alimentação:** VCC 5V
- **Símbolo:** ⊕

#### 74LC00 - NAND
- **Função:** Porta NAND
- **Alimentação:** VCC 5V, +5V
- **Portas:** 4 portas NAND por chip

#### 74LC08 → AND
- **Função:** Porta AND
- **Alimentação:** VCC 5V, +5V

#### 74LC02 →
- **Função:** (provavelmente NOR)

#### 74LC04
- **Função:** Inversores (NOT)
- **Configuração:** 6 inversores por chip

### Notas adicionais
- **Nota:** Não tem duas linhas, cada NOT tem uma entrada/saída
- Circuitos alimentados a 5V são padrão TTL
- Alguns desenhos mostram configurações com múltiplas portas

---

## 📄 Página 12 - Circuito Real

### Título: "Circuito Real"

### Função implementada
**F = AB + CD**

### Componentes físicos desenhados
- Múltiplos chips 74-series
- Conexões entre portas lógicas
- Alimentação (+5V)

### Diagramas
- Circuito esquemático com portas AND/OR
- Marcações A, B, C, D, F

### 16 Estados

**Tabela de estados:**
```
b, 4, 1, 1 - '0', '1'
```

### 2 N/ Determinados
**b '1', - '1'**

**Notas importantes:**
- **REPRESENTAR:** Não tem que ser completar o processo mas lintana cada NOT de 'bloco' ou linha
- Mostra implementação física vs lógica

**Tabela final:**
| A | B | C | D | F |
| - | - | - | - | - |
| 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| ... | ... | ... | ... | ... |

**F = BC**

---

## 📄 Página 13 - Sistema de 2 bits (Apresentar em 2 bits)

### Título: "PARA UM SISTEMA DE 2 SAÍDA de 2 bits (16-32 necessário)"

### Conceito
**Sistema de circuito que determina os números PARES**

**Condição:** Considera a situação de B₁ = 0 e B₀ = 0 como não importa

### Mapas de Karnaugh

#### Tabela B₁, B₀

| B₁ | B₀ | Saida |
| -- | -- | ----- |
| 0  | 0  | d     |
| 0  | 1  | 0     |
| 1  | 0  | 1     |
| 1  | 1  | 0     |

**Resultado:** 
- B₁ |0|0|
- B₀  

#### Tabelas I₁, I₂, I₃
```
    E₁  E₂  E₃  E₄
0 | 0   0   0   d  |
0 | 0   0   1   d  |
0 | 0   1   0   0  |
... (continua)
```

### Resultados finais
**I₁, I₂, I₃, S₁, S₀**

**Nota:** X aumenta o tempo, é a sua complexidade então não se leva neste caso

**S₀ =**

---

## 📄 Página 14 - Tabelas de Evolução de Estados (SAÍDA)

### Diagrama de Estados

**Estados mostrados:**
```
┌──┐
│ 1│  0  0  │d│
└──┘  1  a  │o│
 0    1  d  │o│
 1    0  d  │a│
```

### A B C D - SAÍDA

**Tabela de transição completa:**
| E₁ | E₂ | E₃ | E₄ | SAIDA |
| -- | -- | -- | -- | ----- |
| 0  | 0  | 0  | 0  | d     |
| 0  | 0  | 0  | 1  | 1 1   |
| 0  | 0  | 1  | 0  | 1 0   |
| 0  | 0  | 1  | 1  | d     |
| 0  | 1  | 0  | 0  | 0 1   |
| 0  | 1  | 0  | 1  | d     |
| 0  | 1  | 1  | 0  | d     |
| 0  | 1  | 1  | 1  | d     |
| 1  | 0  | 0  | 0  | 0 0   |
| 1  | 0  | 0  | 1  | d     |
| 1  | 0  | 1  | 0  | d     |
| 1  | 1  | 0  | 0  | d     |
| ... | ... | ... | ... | ...   |

### Mapas de simplificação

**Análise B₁:**
```
  B₁    B₀
  ┌──┬──┬──┬──┐
  │  │  │  │  │
  │1 │1 │1 │  │ B₃
  └──┴──┴──┴──┘
   B₂
```

**Análise B₂:**
Similar structure

**Valores:**
- VAZIOS (estados não utilizados)

### Expressões resultantes
**B₁:**
```
┌──┬──┐
│1 │  │
└──┴──┘
B₃
```

**B₂:**
```
┌──┬──┐
│  │1 │
└──┴──┘
```

**Expressão final:**
- F = ĀB̄C̄D + ABC̄D

---

## 📄 Página 15 - Tipo de Armazenamento (LATCH)

### Título: "Tipo de Armazenamento"

**LATCH**

#### Clock
- **Função:** Sinal de relógio
- **Símbolo:** clk

#### PRE/SET
- **Função:** Preset - Coloca FF a '1'
- **Clock:** clk (circuito de relógio)
- **Saída:** 0 1 (estados)

**Tabela verdade:**
| clk | R | Q | Q̄ |
|-----|---|---|---|
| ↑   | 0 | Usado | Y/Usado |
| ↓   | 1 | 0 | 1 |
| 1   | 0 | 1 | 0 |
| 1   | 1 | Usado | N/Usado |

### FLIP FLOP
- **Também armazena**
- **Depende do Clock**

**Diagrama:**
```
      PRESET
        ↓
  ┌──────────┐
S─┤ D    Q  ├─Q
  │         │
R─┤ clk  Q̄ ├─Q̄
  └──────────┘
      RESET
```

### Funcionamento

**D:** Input (tipo Fly Flop)
- **clock:** Circuito de relógio
- **PRS →** Coloca saída a '1'
- **RST →** Coloca saída a '0'

**Tabela verdade:**
| clk | D | Q | Q̄ |
|-----|---|---|---|
| ↑   | 0 | 0 | 1 |
| ↑   | 1 | 1 | 0 |

**S = se ↑ ↓** coloca a '1'  
**R = RESET ↑** → coloca a '0'

---

## 📄 Página 16 - Flip-Flop com PRESET e RESET

### Diagramas de tempo

**Sinais mostrados:**
- **CLK** (clock)
- **D** (dados)
- **K** 
- **Q**
- **Q̄**

### Circuitos desenhados

**Dois FF conectados:**
```
   K ──→ ┌──┐    ┌──┐
        │PRS│ Q │  │ Q
   L ──→│CLK│   │PRS│
        │RST│ Q̄ │  │ Q̄
        └──┘    └──┘
          '1'     '1'
```

### Formas de onda (F.F)

**CLK:** Pulsos de clock regulares  
**D:** Mudanças de sinal  
**Q:** Saída segue D nas transições  
**Q̄:** Inverso de Q

### Notas importantes

**NOTA:** Se leva inicial junta  
       altima

**PRS = 0 → Q = 1** (Operante flancos do F.F)  
**RST = 0 → Q = 0** (Operante a F.F a '0')

**Diagrama mostra:**
```
  D ──┬── Q  
  CLK─┤
  PRS─┤  
  RST─┴── Q̄
      
  '1'
```

**PRESET → Coloca D.F.F. a '1'**  
**RESET → Coloca a F.F. a '0'**

**PRT = 0 → Q = 1**  
**RST = 0 → Q = 0**

---

## 📄 Página 17 - Funcionamento do Flip-Flop J-K

### Título: "Conhecia Arranque do J.F"

**→ Arranque o F.F a '0'**

### Diagrama de funcionamento

**PRS (Preset):**
```
  ┌─D──Q─┐
  │ CLK  │
  │ RST Q̄│
  └──────┘
```

### Explicação do funcionamento

**+5V** (sem isto não funciona como conseguir, pois mecanismo liga não ser cria RESET a '0' e que passar a inicial da linga)

**Processo:**
- que na linca não de ficar não miso
- mas que para seu de flanco de relógio
- inicio não se certa com tão utilizar
- e lísica a sem para certa assenta tem
- certo após o tempo ele está a '0', terapia
- de ombre a 1 e deixava F.F alterar
- & participação

### Tabela de estados JK

**⇒ JK T.V.**

| clk | J | K | Q | Q̄ |
|-----|---|---|---|---|
| ↓↑  | 0 | 0 | Q | Q̄ |
| ↓↑  | 0 | 1 | 0 | 1 |
| ↑↓  | 1 | 0 | 1 | 0 |
| ↑↓  | 1 | 1 | Q̄ | Q |

### Diagrama do circuito
```
┌──────┐
│  J Q │
│ clk  │── +5V
│  K Q̄│
└──────┘
```

### Gráfico

**clck** (sinal de clock desenhado)

---

## 📄 Página 18 - Diagramas Temporais

### Sinais temporais desenhados

**Sequência de sinais:**
- **clk** (clock) - pulsos regulares
- **J** - entradas
- **K** - entradas  
- **Q** - saída
- **Q̄** - saída invertida

### Características visíveis
- Transições nos flancos do clock
- Mudanças síncronas com clock
- Inversão entre Q e Q̄

---

## 📄 Página 19 - Diagrama Temporal de FF-JK

### Formas de onda completas

**Sinais mostrados:**
- **clk** ─┐┌─┐┌─┐┌─
- **J** ──┘└─┘└─
- **K** ─────┐┌──
- **Q** ────────
- **Q̄** ───────

### Circuito JK adicional
```
    ┌─────────┐
  ──┤ J    Q  ├──
    │         │
  ──┤ K    Q̄ ├──
    └─────────┘
       '1'
```

### Análise temporal
- Mostra comportamento em diferentes condições J e K
- Destaca transições em flancos de subida/descida
- Relação temporal entre entradas e saídas

---

## 📄 Página 20 - Circuito que Transmite Sequência de 3 Bits

### Título: "Circuito que transmite uma sequência de 3 bits (₂₁, ₂₁, ₂₀)"

**Tem O tarrento neste:**

### Condição
**Condição:** Independentemente do **Valor de B₂**, até que sempre saia a Zero

**'0' ──→ β₂**  
**'1'**

### Diagrama de estados

**Três flip-flops conectados:**
```
 |B₂|B₁|B₀|
  ┌──┐  ┌──┐  ┌──┐
D─┤ J│Q─┤ J│Q─┤ J│Q
  │  │  │  │  │  │
clk─┤K│ ─┤K│ ─┤K│
  └──┘  └──┘  └──┘
   '1'    '1'    '1'
```

### Conexões
- Saídas Q conectadas às próximas entradas J
- Clock comum para sincronização
- Pode gerar sequência específica

### Diagramas adicionais
```
┌──┐      ┌──┐
│J│Q      │J│Q
│ │  ──→  │ │
│K│Q̄      │K│Q̄
└──┘      └──┘
 '1'
```

**Nota final:** Esta é 1 para pois → Paulo em período Paulo → recite

---

## 📄 Página 21 - Máquina de MOORE

### Título: "Máquina de MOORE"

### Diagrama de estados inicial
```
  ┌───┐   '1'
 ╱ '1' ╲ SAÍDA/SDB
(   D  ) ─→ ┌───┐
 ╲     ╱    │ D │Q ─→│SAÍDA Ø│
  └───┘     │CLK│    │       │
            │RST│ Q̄  │       │
SAiDA ──────└───┘────│       │
do Estado           └───────┘
   '0'
   10
```

### Tabelas de Estado

#### Tabela 1 - Evolução de Estados (PS/NS)
| PS (Estado Presente) | NS (Estado Seguinte) |
|----------------------|--------------------|
| A                    | 00                 |
| B                    | 01                 |

**Marcações:**
- A | 00 | 11 | 1 | 1
- A | 01 | 00 | 0 | 0

#### Tabela 2 - Estados A e B
| A | B |
|---|---|
| 0 | 0 |
| 0 | 1 |
| 1 | 0 |
| 1 | 1 |

### Mapas de Karnaugh

**D₀:**
```
    Qo
  ┌──┬──┐
1 │d │  │
  │  │  │
  └──┴──┘
  Q1
```

**D₁ = X₁Q₀**

**D₀:**
```
    Q1
  ┌──┬──┬──┬──┐
  │0 │0 │d │  │
X ││1││0││d ││  │
  └──┴──┴──┴──┘
     Qo
```

**D₀ = X̄.Q₀ + X̄.Q₁ Q̄₀ + ...**

---

## 📄 Página 22 - Máquina de Estados (continuação)

### Título: "MS D = Most Significant Digit"

### Circuito prático

**Componentes:**
```
        '1'    │SAÍDA/ISL│
 ┌──┐         │         │
─┤D │PST  Q──►│  CLK    │
 │  │CLK      │         │
 │  │RST  Q̄  │ RST     │
 └──┘         │         │
              │  +5V    │
              └─────────┘
```

### Exercício: Projete um circuito que gera a sequência
**Sequência:** 0 → 3 → 0 ...

### Diagramas de estado

**Estado 1:**
```
  ┌─────┐
  │  A  │  00
  │ 2   │
  └─────┘
     ↓
  ┌─────┐
  │  B  │  11
  │ 11  │
  └─────┘
```

### Tabelas de transição

**Tabela Q₁Q₀:**
```
 PS   NC  D₁  D₀
 A 00│11│ 1│  1
 B 11│00│ 0│  0
```

**Resultado:**
- D₂ = Q̄₁.Q̄₀ + X.Q₀
- D₁ = Q₁.Q₀
- D₀ = 0

---

## 📄 Página 23 - Detectar Sequências MOORE

### Título: "DETECTAR SEQUENCIA"

**04/12/2025**  
**Circuito de MOORE**

### Problema
**i) Detecta** cara - coleta  
**'0'** → **'1'** = **SAÍDA = 1**

### Diagramas de estados

#### Solução 1
```
  ╭───╮
 ╱  A  ╲  x=0
│ 10101│ ←─┐
 ╲     ╱   │
  ╰─┬─╯    │
    │x=1   │
  ╭─▼─╮    │
 ╱  B  ╲   │
│ 0110 │   │
 ╲     ╱   │
  ╰───╯    │
           │x=0
```

**Tabela de estado:**
| estado | x | SAÍDA DO circuito |
|--------|---|-------------------|
| A      |00 | 10101             |
| B      |01 | 0                 |
|        |10 | trazei Q grande   |

#### N° do Estado = 2
**Estado:**
- MOORE = 2⁰

**Ex. Q agena 20**
↓
**Estado₂₀ = 2ᵟ** (se.é.f.f)

### Solução 2 - Diagrama detalhado
```
  ╭───╮ 1/0     ╭───╮
 ╱  A  ╲───────▶│  B │
│  x0  │        │ 1  │
 ╲     ╱◄───────┴───┘
  ╰───╯   0/0
```

#### Tabela Moore
| x | Q₁ | Q₀ | Hienby | D₁ | D₀ |
| - | -- | -- | ------ | -- | -- |
| 0 | 0  | 0  | 0      | 0  | 0  |
| 0 | 0  | 1  | 0      | 0  | 1  |
| 0 | 1  | 0  | 1      | 0  | 0  |
| 1 | 0  | 0  | 0      | 1  | 0  |
| ... | ... | ... | ...    | ... | ... |

### Mapas de simplificação

**Igual ao anterior**
**anteriores**

**Variante Moore**

**Variação 1** 
```
    x=0
  ╭───╮
 ╱  A  ╲
│  00  │◄─┐
 ╲     ╱  │x=1
  ╰─┬─╯   │
    │x=1  │
  ╭─▼─╮   │
 ╱  B  ╲  │
│ 01  │──╯
 ╲     ╱ x=0
  ╰───╯
```

### Tabela PS/NS

| PS | NS | SAÍDA DE circuito |
|----|----|--------------------|
| 0  | 0  | 10101             |
| 1  | 1  | 01110             |

**Igual ao variade**  
**anteriores**

---

## 📄 Página 24 - Tabela Evolução ESTADOS

### Título: "Tabela Evolução ESTADOS"

**MEALY**

### Tabela principal INPUT e Estados

| INPUT | PS    | NS    | SAÍDA | D  |
|-------|-------|-------|-------|----|
| x     | Q₁ ᵛ  | Q₁ ᵛ  | MEALY |    |
| 0     | 0     | 0     | 0     | 1  |
| 0     | 0     | 1     | 0     | 0  |
| 0     | 1     | 0     | 0     | 0  |
| 1     | 1     | 0     | 1     | 0  |

**Expressões:**
- D = X̄Q̄
- Sᴍᴇᴀʟʏ = XQ

### Diagrama SAÍDA MEALY

**Circuito mostrado:**
```
  ┌──────┐  '1'      ┌────────┐
  │ clk  │  PST  Q──►│ SAÍDA  │
  │      │  CLK      │ MEALY  │
  │      │  RST  Q̄  │        │
  └──────┘           └────────┘
              ┬─┼─┼─┼─┼─┼─┼─┼─+5V
              │
              ⊥
```

### Nota importante

**Detectar 1-1-0** → A

**Pode-se intercalar**

**→ Procura Seq. NADO Exato**

### Diagrama de estados MEALY
```
     100
   ╭─────╮
  ╱   A   ╲
 │    0   │
  ╲       ╱
   ╰──┬──╯
      │ 1/0
   ╭──▼──╮
  ╱   B   ╲
 │    1   │ Assim quando acaba na sequência exata
  ╲       ╱ → onde a frequência enquanto não recorta
   ╰──┬──╯ membro nada está o corrida
      │     do inicio
   ╭──▼──╮
  ╱   C   ╲ 0→Output
 │    0   │ 1→ ... de onde começou
  ╲       ╱
   ╰─────╯
```

---

## 📄 Página 25 - Implementação MEALY

### Diagrama de estados completo
```
     0/0        1/0       0/1
╭───╮──→╭───╮──→╭───╮──→╭───╮
│ A │   │ B │   │ C │   │   │
│1/0│   │0/0│   │1/0│   │   │
╰───╯←──╰───╯   ╰───╯   ╰───╯
  0/0
```

### Tabelas de estado

#### Tabela PS/NS com MEALY
| x | Qₙ Q₀ | Qₙ Q₀ | Hierby | D₁ | D₀ |
|---|-------|-------|--------|----|----|
| 0 | 0  0  | 0  0  | 0      | 0  | 0  |
| 1 | 0  0  | 0  1  | 0      | 0  | 1  |
| 0 | 0  1  | 1  0  | 0      | 1  | 0  |
| 1 | 0  1  | 0  1  | 0      | 0  | 1  |
| 0 | 1  0  | 0  0  | 1      | 0  | 0  |
| 1 | 1  0  | 0  1  | 0      | 0  | 1  |

### Mapas de Karnaugh

**D₁:**
```
      Q₁
   ┌──┬──┐
x  │0 │d │    D₁ = XQ̄₁ + XQ₀ + XQ̄₀Q̄₁
   │0 │1 │
   └──┴──┘
    Q₀
```

**D₀:**
```
      Q₁
   ┌──┬──┐
   │0 │1 │1
x  │1 │0 │
   └──┴──┘
    Q₀
```

**D₀ = X̄.Q̄₀ + X̄Q₁ Q̄₀**

**MEALY:**
```
      Q₁
   ┌──┬──┬──┬──┐
   │0 │d │0 │1 │
x  │0 │  │1 │0 │
   └──┴──┴──┴──┘
    Q₀
```

**MEALY = X̄Q₁**

---

## 📄 Página 26 - Circuito MEALY Implementado

### Circuito completo desenhado

**Componentes principais:**
```
         x
  ┌─────────────┐    '1'   ┌────────┐
  │             │  PST     │        │
──┤  D      Q  ├──────────►│   Q    │
  │             │  CLK     │        │
  │         Q̄  ├──────────►│   Ø̄   │
  └─────────────┘  RST     └────────┘
                   +5V
```

### Ligações lógicas
- Portas AND e OR para implementar funções D₁, D₀
- Saída MEALY derivada das portas lógicas
- Clock compartilhado
- Alimentação +5V

### Nota de rodapé
**16/12**

**Variante de Moore**

**saídas MOORE ?**

---

## 📄 Página 27 - Variante Moore (2 Soluções)

### Solução 1
```
     ╭───╮
    ╱  A  ╲ 10101
   │ 10101│ ◄─┐
    ╲     ╱   │α
     ╰─┬─╯    │
       │      │
     ╭─▼─╮    │
    ╱  B  ╲   │
   │ 0110 │───╯
    ╲     ╱
     ╰───╯
```

### Solução 2
```
      x̄
     ╭───╮
    ╱  A  ╲ ##
   │  #0  │◄──┐
    ╲     ╱   │α
     ╰─┬─╯    │
       │x     │
     ╭─▼─╮    │
    ╱  B  ╲   │
   │  1   │   │pode ter um Morse
    ╲     ╱   │eu sempre que
     ╰───╯────┘ *x* Linhas e anterior

             igual ao variade
             anteriores
```

### Tabelas de estado

**Solucao 1:**

| Qn⁰ N₁ | s5 s4 s3 s2 s1 | x |
| ------- | -------------- | - |
| 0       | 1  0  1  0  1  | 1 |
| 1       | 0  1  1  0  -  | 0 |

**Solução 2:**
| PS | NS | SAÍDA DO circuito |
|----|----|--------------------|
| 0  | 1  | 0101              |
| 1  | 0  | 01110             |

**Igual as variade anteriores**

---

## 📄 Página 28 - Tabela Evolução (Final)

### Tabela de evolução completa

| x | PS  | NS  | SAÍDA |
|---|-----|-----|-------|
| 0 | 00  | 00  | Hooly |
| 1 | 00  | 01  | 0 0   |
| 0 | 01  | 00  | 0 1   |
| 1 | 01  | 10  | 0 1   |
| 0 | 10  | 00  | 1 0   |
| 1 | 10  | 01  | 1 0   |

### Mapas de Karnaugh finais

**S₁:**
```
      Q₁
   ┌──┬──┬──┬──┐
x  │0 │0 │1 │1 │  S₁ = Q₁
   │0 │0 │  │  │
   └──┴──┴──┴──┘
    Q₀
```

**S₀:**
```
      Q₁
   ┌──┬──┬──┬──┐
x  │0 │d │0 │  │
   │1 │0 │d │0 │
   └──┴──┴──┴──┘
    Q₀
```

**D₁:**
```
      Q₁
   ┌──┬──┬──┬──┐
x  │0 │0 │d │0 │  D₁ = X.Q₀.Q₁ + X₁.Q₀.Q̄₁
   │0 │1 │d │0 │
   └──┴──┴──┴──┘
    Q₀
```

**D₀:**
```
      Q₁
   ┌──┬──┬──┬──┐
x  │0 │0 │0 │  │  D₀ = X̄.Q₁ + Q₁.Q̄₀.d₁
   │1 │0 │d │  │
   └──┴──┴──┴──┘
    Q₀
```

---

## 📝 Resumo de Conceitos por Tema

### 1️⃣ Multiplexadores e Demultiplexadores
**Ver página de teoria separada (Teoria_MUX_DEMUX.md)**
- MUX: n entradas → 1 saída
- DEMUX: 1 entrada → n saídas  
- Fórmula: n = 2^k (k = bits de controlo)

### 2️⃣ Simplificação com Karnaugh
- **2 variáveis:** 4 células (2²)
- **3 variáveis:** 8 células (2³)
- **4 variáveis:** 16 células (2⁴)
- **Regra:** Agrupar em potências de 2 (1, 2, 4, 8, 16)

### 3️⃣ Circuitos Integrados 74-series
- **74LC86:** XOR
- **74LC00:** NAND
- **74LC08:** AND
- **74LC04:** NOT (inversores)
- **Alimentação:** 5V (padrão TTL)

### 4️⃣ Flip-Flops
**LATCH:**
- Armazena estado
- Sensível ao nível (level-triggered)

**FLIP-FLOP D:**
- Armazena no flanco do clock (edge-triggered)
- Q = D (no flanco de subida)
- PRE/SET → Q = 1
- RESET → Q = 0

**FLIP-FLOP JK:**
- Mais versátil
- J=K=1 → toggle (inverte)

### 5️⃣ Máquinas de Estados

**MOORE:**
- Saída depende **apenas do estado atual**
- Saída = f(estado)
- Mais estável mas pode precisar mais estados

**MEALY:**
- Saída depende do **estado e entrada**
- Saída = f(estado, entrada)
- Menos estados mas saídas podem ser instáveis

### 6️⃣ Diferenças MOORE vs MEALY
| Aspeto | MOORE | MEALY |
|--------|-------|-------|
| Saída depende de | Estado apenas | Estado + Entrada |
| Número de estados | Geralmente mais | Geralmente menos |
| Estabilidade | Mais estável | Pode ser instável |
| Velocidade | Mais lenta | Mais rápida |

---

## 🎯 Dicas de Estudo

### Para Provas
1. **Dominar Karnaugh** - Essencial para simplificação
2. **Praticar MUX/DEMUX** - Comum em exercícios
3. **Flip-Flops** - Saber tabelas verdade de cor
4. **Máquinas de Estados** - Desenhar diagramas rapidamente
5. **Implementação física** - Conhecer CIs 74-series

### Checklist de Exercícios
- [ ] Simplificar função com Karnaugh (2, 3, 4 var)
- [ ] Implementar função com MUX
- [ ] Desenhar diagrama de estados (Moore/Mealy)
- [ ] Criar tabela de transição de estados
- [ ] Implementar circuito com FF-D ou FF-JK
- [ ] Converter entre Moore e Mealy

### Erros Comuns ⚠️
- Esquecer de agrupar em potências de 2 no Karnaugh
- Confundir Moore e Mealy
- Não considerar PRE/SET e RESET em FF
- Esquecer que saída de MOORE depende só do estado
- Não verificar condições de "don't care" (d)

---

**Última atualização:** Fevereiro 2026  
**Páginas analisadas:** 28  
**Fonte:** Caderno digitalizado ISD

---

## 📚 Recursos Complementares

### Simuladores Recomendados
- **Logisim Evolution** - Simulação de circuitos digitais
- **Quartus** - Para FPGA (mais avançado)
- **CircuitVerse** - Online, bom para MUX/FF

### Para Praticar
- Fazer diagramas de estado para sequências diferentes
- Implementar detectores de padrões (00, 01, 10, etc.)
- Criar contadores com FF
- Simplificar funções complexas com Karnaugh

**Boa sorte nos estudos! 🚀**

---

## Ver tambem

- [[01_Conversao_de_Bases]] — Conversao entre bases numericas
- [[05_Teoria_MUX_DEMUX]] — Resumo teorico MUX e DEMUX
- [[06_Slides_MUX_DEMUX]] — Slides ISPGAYA MUX/DEMUX
- [[07_Circuitos_Integrados_TTL]] — Familia 74LS, pinouts
- [[03_LED]] — Tipos, cores, calculo de resistencia
- [[02_Resistencias]] — Codigo de cores, tipos
- [[08_VHDL]] — Descricao de hardware em VHDL
- [[99_guia_estudo_isd]] — Guia de estudo para testes
- [[00_ISD_Index]] — Indice geral ISD
