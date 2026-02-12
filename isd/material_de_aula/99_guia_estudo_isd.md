# Guia de Estudo - ISD (Teste)

**Topicos relacionados:** [[04_Anotacoes_ISD_Circuitos]], [[05_Teoria_MUX_DEMUX]], [[06_Slides_MUX_DEMUX]], [[07_Circuitos_Integrados_TTL]], [[03_LED]], [[02_Resistencias]], [[08_VHDL]], [[01_Conversao_de_Bases]]

> Baseado na analise de **todos os testes do professor** (2007-2025) e nos seus comentários/correcões.

---

## Estrutura do Teste (SEMPRE igual)

O professor usa **sempre** a mesma estrutura com 6 questões dentro de um cenário real (casino, COVID, F1, Canal do Panama, etc.):

| Questao | Cotacao | O que pede                       | Componente tipico                           |
| ------- | ------- | -------------------------------- | ------------------------------------------- |
| 1.1     | 2 val   | Diagrama de blocos               | Entradas/Saidas do sistema                  |
| 1.2     | 4 val   | Problema combinatorio            | Tabela verdade + Karnaugh + circuito OU MUX |
| 1.3     | 4 val   | Armazenamento ou VHDL (texto)    | Flip-Flops / Latch OU explicacao VHDL       |
| 1.4     | 4 val   | Maquina de estados OU MUX        | Moore/Mealy OU MUX                          |
| 1.5     | 4 val   | Detetor de sequencia OU contador | Mealy/Moore OU Shift Register               |
| 1.6     | 2 val   | Visualizacao em display          | Principio conceptual (7-seg)                |

**NOTA:** A ordem das questões 1.2-1.5 varia, mas os TIPOS são sempre estes.

---

## Q1.1 - Diagrama de Blocos (2 valores - fácil)

**O que o professor quer:** Um diagrama simples que mostre TODAS as entradas e saídas do sistema descrito no enunciado.

### Como fazer (30 segundos de leitura + 4 min de desenho)

1. Le o enunciado inteiro e sublinha: entradas, saídas, acções
2. Desenha 3 blocos: ENTRADAS -> PROCESSAMENTO -> SAÍDAS
3. Dentro do processamento, menciona os componentes que vais usar nas alíneas seguintes

### Template

```
[Sensor/Input A] --\
[Sensor/Input B] ----> [PROCESSAMENTO]  ---> [Saida 1 (LED/alarme)]
[Botao/PIN]     --/    | MUX            |---> [Saida 2 (Display)]
                       | FF-D           |---> [Saida 3 (sinal)]
                       | Maq. Estados   |
                       | Contador       |
```

### Exemplo real (Teste 2024-25 B - Canal do Panama)

```
[Sinal UWB barco A: 2bit designacao + 2bit prioridade] --\
[Sinal UWB barco B: 2bit designacao + 2bit prioridade] ----> [Comparador prioridade]
[PIN do barco] ----------------------------------------/     [Armazenamento FF-D]
[Sensor entrada canal] --------------------------------\     [Maq. Mealy]
[Sensor saida canal] ----------------------------------/     [Descodificador VHDL]
                                                                    |
                                                            [LED verde passagem]
                                                            [Alarme materiais]
                                                            [Display nome barco]
```

**JUSTIFICA:** "O diagrama apresenta todas as entradas do sistema (sinais UWB, PIN, sensores) e as saidas (LED, alarme, display). O bloco de processamento contem os circuitos digitais necessarios para cada funcionalidade."

---

## Q1.2-1.4 - Logica Combinatoria (Tabela + Karnaugh + Circuito)

**Aparece em TODOS os testes.** O professor pede para resolver um problema com tabela de verdade.

### Processo passo a passo

**Passo 1:** Identificar variaveis de entrada e saida

- Exemplo: "PIN de 4 bits valido se soma dos bits for impar" → Entradas: D,C,B,A | Saida: F

**Passo 2:** Construir tabela de verdade (TODAS as combinacoes)

| D | C | B | A | F |
| - | - | - | - | - |
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 1 | 1 |
| 0 | 0 | 1 | 0 | 1 |
| ... | ... | ... | ... | ... |

**Passo 3:** Mapa de Karnaugh (simplificar)

```
         BA
CD    00  01  11  10
 00 |  0   1   0   1 |
 01 |  1   0   1   0 |
 11 |  0   1   0   1 |
 10 |  1   0   1   0 |
```

Agrupar 1s em potencias de 2 (1, 2, 4, 8).

**Passo 4:** Expressao simplificada → Circuito com portas logicas

**Passo 5:** (Alternativa) Implementar com MUX — o professor aceita como alternativa valida

### Resolver com MUX (alternativa ao Karnaugh)

O professor aceita (e as vezes pede) resolver por MUX em vez de Karnaugh:
1. Variaveis de entrada → linhas de selecao do MUX
2. Valores da saida (0 ou 1) → ligar diretamente as entradas de dados

Exemplo: F(A,B,C) com MUX 8:1
- A, B, C ligados a S2, S1, S0
- Para cada combinacao ABC, ligar a entrada correspondente a 0 ou 1

### Exemplo real: Prioridade de barcos (Teste 2024-25 B)

Resposta do professor: "Tabela de verdade com quatro colunas: 2 bits de prioridade do barco A e 2 bits de prioridade do barco B. A saida e determinada por analise de duas a duas colunas. Se as colunas mais a esquerda representam um numero maior a saida e Barco A. Mapas de Karnaugh e circuito final (ou resolucao por MUX)."

### Exemplo real: Alarme VHDL numeros pares (Teste 2024-25 B)

Resposta do professor: "Sempre que os bits da designacao do barco (2 bits) forem com o bit menos significativo a zero - sao pares, nesse caso deve ser ligado o alarme."

→ Neste caso a solucao e trivial: **Alarme = NOT(bit0)**

---

## Q - VHDL (se sair, sera explicacao em texto)

**Nota:** VHDL provavelmente nao saira no teste, mas se sair sera para explicar por texto corrido como funcionaria — nao para escrever codigo.

### O que saber explicar em texto

VHDL e uma linguagem que descreve circuitos digitais. Um circuito em VHDL tem duas partes:

1. **ENTITY** — define as portas (entradas e saidas) do circuito, como se fosse o "exterior" de uma caixa preta
2. **ARCHITECTURE** — descreve o que o circuito faz por dentro, ou seja, a relacao entre entradas e saidas

### Tipos de porta

- **IN** — entrada (so leitura)
- **OUT** — saida (so escrita)
- **BUFFER** — saida que pode ser lida internamente
- **INOUT** — bidirecional (entrada e saida)

### Formas de descrever o comportamento

- **WHEN/ELSE** — "a saida e X quando a entrada e Y, senao e Z" (concorrente, fora de PROCESS)
- **IF/ELSE** — "se a entrada for Y entao a saida e X, senao e Z" (sequencial, dentro de PROCESS)
- **CASE/WHEN** — "conforme o valor da entrada, a saida toma valores diferentes" (sequencial, dentro de PROCESS)

### Como responder se sair no teste

Se o professor pedir para explicar uma solucao em VHDL, descreve em texto:

> "Criaria uma ENTITY com as entradas [X bits] e a saida [Y bits]. Na ARCHITECTURE, usaria uma estrutura WHEN/ELSE (ou IF/ELSE) para implementar a tabela de verdade: quando a entrada fosse [valor], a saida seria [valor]. Para os restantes casos a saida seria [valor por defeito]."

### Exemplo real: PIN com bit mais significativo ativo (Teste 2024-25 A)

Resposta do professor: "Tabela de verdade (DCBA), onde e '1' na saida, exceto quando D=1 na entrada."

**Como explicar em texto:** "A entidade teria uma entrada de 4 bits (o PIN) e uma saida de 1 bit (validacao). Na arquitetura, a saida seria simplesmente o valor do bit mais significativo (D) da entrada — se D for '1', a saida e '1' (PIN valido), caso contrario e '0'."

### Exemplo real: Alarme numeros pares (Teste 2024-25 B)

**Como explicar em texto:** "A entidade teria uma entrada de 2 bits (designacao do barco) e uma saida de 1 bit (alarme). Na arquitetura, o alarme seria ativado sempre que o bit menos significativo da entrada fosse '0', pois isso indica um numero par."

### Conceitos-chave para memorizar

- VHDL e **concorrente** (a ordem dos comandos nao importa, exceto dentro de PROCESS)
- Um PROCESS e uma regiao sequencial ativada por uma **lista de sensibilidade** (sinais que o disparam)
- VHDL descreve hardware, nao e software — cada linha pode representar um circuito fisico a funcionar em paralelo

---

## Q - Maquina de Estados (aparece SEMPRE, 4 valores)

### Quando usar Moore vs Mealy

| Situacao | Usar |
| -------- | ---- |
| "Gerar sequencia" (semaforos, aleatoriamente) | **Moore** |
| "Detetar sequencia" (101, 110, fraude) | **Mealy** (menos estados) |
| Professor nao especifica | **Moore** (mais seguro, mais simples) |

### Moore - Processo completo

**Exemplo real:** Geracao aleatoria de nome (Teste 2024-25 A)

Resposta do professor: "Maquina de Moore com cinco estados, com um botao que interrompe o CLK para permitir determinar um nome da lista dos cinco possiveis."

**Passo 1:** Diagrama de estados

```
     ┌──────┐     ┌──────┐     ┌──────┐
 --> │ S0   │ --> │ S1   │ --> │ S2   │
     │Nome 1│     │Nome 2│     │Nome 3│
     └──────┘     └──────┘     └──────┘
        ^                          |
        |         ┌──────┐     ┌──────┐
        └──────── │ S4   │ <-- │ S3   │
                  │Nome 5│     │Nome 4│
                  └──────┘     └──────┘
```

Os estados circulam enquanto o CLK esta ativo. Quando o botao e premido, o CLK para e o estado atual define o nome selecionado.

**Passo 2:** Numero de FF necessarios
- 5 estados → precisa de 3 bits (2^3 = 8 >= 5) → 3 Flip-Flops D

**Passo 3:** Tabela de evolucao de estados

| PS (Q2 Q1 Q0) | NS (Q2 Q1 Q0) | Saida |
| -------------- | -------------- | ----- |
| 000 (S0)       | 001 (S1)       | Nome1 |
| 001 (S1)       | 010 (S2)       | Nome2 |
| 010 (S2)       | 011 (S3)       | Nome3 |
| 011 (S3)       | 100 (S4)       | Nome4 |
| 100 (S4)       | 000 (S0)       | Nome5 |

**Passo 4:** Karnaugh para cada D (D2, D1, D0) → Circuito

### Mealy - Detetor de sequencia (o mais pedido!)

**Exemplo real:** Detetar "1-1-1" (fraude, Teste 2024-25 A)

Resposta do professor: "Maquina de Mealy que sempre que deteta '1-1-1', sendo o '1' gerado cada vez que sai o primeiro estado na maquina de Moore."

**Passo 1:** Diagrama de estados Mealy

```
       0/0         1/0         1/0
  ┌──> (A) ------> (B) ------> (C)
  |    |  ^         |            |
  |    |  | 0/0     | 0/0        | 1/1  <-- SAIDA ATIVA!
  |    └──┘         v            |
  |                (A) <---------┘
  └────────────────────────────────
```

- Estado A: nenhum '1' detetado
- Estado B: um '1' detetado
- Estado C: dois '1' detetados
- Se em C receber mais um '1' → SAIDA = 1 (fraude detetada!)

**Passo 2:** Tabela de evolucao

| x | PS (Q1 Q0) | NS (Q1 Q0) | Saida |
| - | ---------- | ---------- | ----- |
| 0 | 00 (A)     | 00 (A)     | 0     |
| 1 | 00 (A)     | 01 (B)     | 0     |
| 0 | 01 (B)     | 00 (A)     | 0     |
| 1 | 01 (B)     | 10 (C)     | 0     |
| 0 | 10 (C)     | 00 (A)     | 0     |
| 1 | 10 (C)     | 00 (A)     | 1     |

**Passo 3:** Karnaugh para D1, D0 e Saida

**Passo 4:** Circuito com FF-D + portas logicas

### Outro detetor comum: sequencia "110" (Teste 2020-21)

```
      0/0         1/0          1/0
 ┌──> (A) ------> (B) -------> (C)
 |     ^           |             |
 |     | 0/0       |             | 0/1  <-- SAIDA!
 |     └───────────┘             |
 |                  1/0          |
 |     (B) <---------------------┘
 └──────────────────────────────────
```

- A: inicio
- B: detetou '1'
- C: detetou '11'
- Em C, se receber '0' → saida=1 (detetou "110")

---

## Q - Flip-Flops e Armazenamento

### Quando o professor pede armazenamento

**Exemplo real:** "Armazenar PIN recebido via UWB" (Teste 2024-25 B)

Resposta do professor: "Se o PIN e recebido a chegada tem de ser armazenado, por exemplo, em quatro flip-flops ou quatro latch."

**Solucao:** 4 Flip-Flops D, um por bit do PIN

```
        PIN[3]  PIN[2]  PIN[1]  PIN[0]
          |       |       |       |
       ┌──▼──┐ ┌──▼──┐ ┌──▼──┐ ┌──▼──┐
       │D   Q│ │D   Q│ │D   Q│ │D   Q│
       │  FF │ │  FF │ │  FF │ │  FF │
  CLK──┤>    │ │>    │ │>    │ │>    │
       │   Q'│ │   Q'│ │   Q'│ │   Q'│
       └─────┘ └─────┘ └─────┘ └─────┘
          |       |       |       |
        Q3      Q2      Q1      Q0  (PIN armazenado)
```

Depois compara PIN armazenado com PIN introduzido usando portas XNOR (igualdade bit a bit) + AND.

### Shift Register (paralelo → serie)

**Exemplo real:** Enviar velocidade 4 bits em serie (Teste Recurso 2024-25)

Resposta do professor: "A velocidade da caixa de velocidade esta no formato paralelo, tera que ser injetada num shift-register de 4 Flip-Flops e saira em serie ao fim de 4 ciclos de relogio."

```
  Load (paralelo):  D3  D2  D1  D0
                     |   |   |   |
                  ┌──▼──┬──▼──┬──▼──┬──▼──┐
          CLK --> │ FF3 → FF2 → FF1 → FF0 │--> Saida Serie
                  └─────┴─────┴─────┴─────┘
```

---

## Q - Contadores

### Quando usar

- "Contar numero de vezes que..." → Contador UP
- "Gerar seletor para MUX" → Contador ligado as linhas de selecao
- "Aumentar gradualmente" → Contador UP com N bits

**Exemplo real:** Contar cara numa moeda (Teste 2022-23)

"Apresentar circuito que conte o numero de vezes que sai cara (maximo 4)"

→ Contador de 2 bits (conta 0 a 3, maximo 4 contagens)
→ Entrada do contador: sinal "cara" do circuito anterior
→ Saida: Q1 Q0 (numero binario de 0 a 3)

---

## Q1.6 - Visualizacao em Display (2 valores - conceptual)

**IMPORTANTISSIMO:** O professor diz **"sem ter de concluir o projeto"**. So quer o PRINCIPIO, nao o circuito completo!

### O que escrever (resposta tipo que dá nota maxima)

Resposta padrao do professor (aparece identica em TODOS os testes):

> "A partir do resultado [do circuito anterior], deveria ser construido um descodificador que associa cada estado a um nome/numero. Depois tinha-se que construir um novo descodificador que para cada letra/digito gerasse os segmentos (Display de 7 segmentos) que tem de estar ativos. O numero de Displays do circuito deveria ser definido pelo limite maximo de letras/digitos permitido."

### Template de resposta para Q1.6

```
1. Definir quantos caracteres mostrar (ex: 5 letras → 5 displays)
2. Descodificador 1: estado/codigo → letras do nome
3. Descodificador 2: cada letra → 7 segmentos (a,b,c,d,e,f,g)
4. Ligar cada descodificador a um display de 7 segmentos
```

**Diagrama conceptual:**

```
[Estado] --> [Decodificador    ] --> [Decodificador  ] --> [Display 7-seg]
             [Estado → Letras  ]    [Letra → 7 seg  ]     x N displays
```

**Display de 7 segmentos:**

```
  --a--
 |     |
 f     b
 |     |
  --g--
 |     |
 e     c
 |     |
  --d--
```

**Justifica:** "O sistema necessita de N displays de 7 segmentos (N = numero maximo de caracteres). Um primeiro descodificador converte o codigo do estado para a sequencia de letras. Um segundo descodificador, para cada letra, ativa os segmentos correspondentes no display. Esta abordagem modular permite a visualizacao de qualquer nome dentro do limite definido."

---

## Padroes dos Testes (o que SAI SEMPRE)

Analisando todos os testes de 2015 a 2025:

### Aparece em 100% dos testes
- Diagrama de blocos (Q1.1)
- Tabela de verdade + simplificacao (Karnaugh ou MUX)
- Maquina de estados (Moore ou Mealy)
- Visualizacao em display (Q1.6 - conceptual)

### Aparece em ~80% dos testes
- VHDL (uma alinea)
- Flip-Flops para armazenamento
- Detetor de sequencia (Mealy)

### Aparece em ~50% dos testes
- Contadores
- Shift Register (paralelo ↔ serie)
- MUX como implementacao alternativa
- DEMUX para projetar de raiz

---

## Palavras-chave do enunciado → Componente

| Quando le isto no enunciado | Usar isto |
| --------------------------- | --------- |
| "selecionar", "escolher entre" | MUX |
| "direcionar para", "ativar especifico" | DEMUX |
| "armazenar", "guardar", "receber e comparar" | Flip-Flops D |
| "contar", "numero de vezes" | Contador |
| "sequencia", "detetar padrao" | Maquina de Estados (Mealy) |
| "gerar sequencia", "percorrer estados" | Maquina de Estados (Moore) |
| "visualizar", "display", "mostrar" | Display 7-seg + Descodificador |
| "formato serie", "serializar", "enviar bit a bit" | Shift Register |
| "VHDL", "descreva" | Explicar ENTITY + ARCHITECTURE em texto |
| "alarme quando condicao" | Tabela verdade + simplificacao |
| "impar" | XOR de todos os bits |
| "par" | NOT(bit menos significativo) OU XNOR |
| "valido se bit X ativo" | Testar diretamente o bit |
| "aleatorio" | Moore ciclica + botao que para CLK |
| "PIN" | FF-D para armazenar + comparador |

---

## Erros que tiram nota (dos comentarios do professor)

1. **Nao justificar** - O professor repete "Justifique" em TODAS as alineas. Sem justificacao = sem nota
2. **Nao apresentar tabela de verdade** - Mesmo que o Karnaugh esteja certo, quer ver a tabela
3. **Confundir Moore e Mealy** - Moore: saida nos estados. Mealy: saida nas transicoes
4. **Esquecer o RESET** - Sempre considerar estado inicial dos FF
5. **Na Q1.6 tentar fazer o circuito completo** - So quer o principio! Perdes tempo sem ganhar nota
6. **VHDL sem explicacao clara** - Se sair, explicar em texto corrido o que o circuito faria (ENTITY, ARCHITECTURE, comportamento)
7. **Nao considerar Enable** - MUX e DEMUX tem Enable, pode ser usado para condicoes

---

## Gestao de Tempo (teste ~75-90 min)

| Questao | Tempo | Prioridade |
| ------- | ----- | ---------- |
| 1.1 Diagrama de blocos | 5 min | Fazer PRIMEIRO (2 val faceis) |
| 1.6 Visualizacao | 5 min | Fazer SEGUNDO (2 val faceis, so principio) |
| 1.2-1.5 (a que sabes melhor) | 15 min | Fazer TERCEIRO |
| 1.2-1.5 (as restantes) | 15 min cada | Por ordem de confianca |
| Revisao | 5 min | Ver se justificaste tudo |

**REGRA:** Se estas preso numa questao > 7 min, avanca. Volta no fim.

**ESTRATEGIA:** Comeca pelo 1.1 e 1.6 (4 valores quase garantidos em 10 min). Depois faz as de 4 valores por ordem do que sabes melhor.

---

## Checklist Final (antes de entregar)

- [ ] Q1.1: Diagrama de blocos com TODAS as entradas e saidas?
- [ ] Todas as alineas tem JUSTIFICACAO escrita?
- [ ] Tabelas de verdade COMPLETAS (todas as combinacoes)?
- [ ] Karnaugh: agrupamentos em potencias de 2?
- [ ] Maquina de estados: diagrama + tabela evolucao + Karnaugh + circuito?
- [ ] FF-D: considerei CLK, RESET, PRESET?
- [ ] VHDL: codigo COMENTADO?
- [ ] Q1.6: expliquei o PRINCIPIO (descodificador + 7-seg)?
- [ ] Indiquei qual teste resolvi (A, B, C, D ou E)?

---

## Ver tambem

- [[04_Anotacoes_ISD_Circuitos]] — Anotacoes detalhadas de circuitos
- [[05_Teoria_MUX_DEMUX]] — Resumo teorico MUX e DEMUX
- [[06_Slides_MUX_DEMUX]] — Slides ISPGAYA MUX/DEMUX
- [[07_Circuitos_Integrados_TTL]] — Familia 74LS, tabela de CIs
- [[03_LED]] — Tipos, cores, calculo de resistencia
- [[02_Resistencias]] — Codigo de cores, tipos
- [[08_VHDL]] — Descricao de hardware em VHDL
- [[01_Conversao_de_Bases]] — Conversao entre bases numericas
- [[00_ISD_Index]] — Indice geral ISD
