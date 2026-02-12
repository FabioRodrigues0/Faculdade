# Correcao Simulacao 3 — EstufaVerde

> [!info] Fonte
> Baseado nas respostas do aluno (`Sim_teste_3.pdf`, 5 paginas) e no enunciado (`teste_isd.md`).

---

## 1.1 — Diagrama de blocos (2 valores)

**O que o aluno fez:**

- Diagrama: entradas (login/logout, campo, solo) → bloco (Maquina Estados / F.F. / Demux/Mux) → saidas (Rotacao Rega, Estado op)
- Texto: maquina de estados para verificar PIN, flip-flops para guardar registo, DEMUX para identificar operador, MUX com sensores do solo para perceber onde sera necessario rega
- Identifica componente sequencial (maquina de estados, FF) e combinatoria (MUX/DEMUX)

**Avaliacao:**

O professor faz diagramas de blocos muito simples e diretos (ver correcoes Teste A e B). O formato do aluno esta alinhado com essa abordagem:
- Entradas e saidas identificadas ✓
- Bloco principal com componentes nomeados ✓
- Justificacao textual que distingue combinatorio de sequencial ✓

Podia melhorar ligeiramente: faltam o botao $B$ e o sensor de humidade $S$ como entradas explicitas, e o alarme e display como saidas. Mas dado o nivel de simplicidade que o professor espera nesta alinea, a resposta e aceitavel.

**Estimativa:** ~1-1.5/2 valores

---

## 1.2 — Maquina de Moore: Controlador de zonas (4 valores)

**O que o aluno fez:**

Diagrama de estados com 3 estados (Z1/00, Z2/01, Z3/10), transicoes ciclicas com $B=1$ e self-loops com $B=0$. Tabela de transicao com colunas PS, NS e indicadores de zona ativa. Mapas de Karnaugh desenhados mas vazios.

**Diagrama de estados:** ✅ Correto

$Z1 \xrightarrow{B=1} Z2 \xrightarrow{B=1} Z3 \xrightarrow{B=1} Z1$, com $B=0$ a manter o estado.

**Tabela de transicao PS → NS:** ✅ Correta

| B | PS | NS |
|:---:|:---:|:---:|
| 0 | 00 | 00 |
| 1 | 00 | 01 |
| 0 | 01 | 01 |
| 1 | 01 | 10 |
| 0 | 10 | 10 |
| 1 | 10 | 00 |

**Colunas de indicacao de zona ativa ($D_2$, $D_1$, $D_0$):** ✅ Valores corretos como saidas Moore

O aluno adicionou colunas a indicar qual zona esta ativa em cada estado (Z1→1,0,0; Z2→0,1,0; Z3→0,0,1) — semelhante a coluna de Alarme que aparece noutras tabelas. Estes valores estao corretos. O que ficou em falta foram as colunas dos **inputs dos flip-flops** ($D_1$, $D_0$), que sao necessarias para fazer os mapas de Karnaugh e construir o circuito.

> [!important] Como preencher $D_1$ e $D_0$
> Com 3 estados precisamos de 2 flip-flops ($2^1 = 2 < 3$, $2^2 = 4 \geq 3$).
> Os inputs dos flip-flops sao simplesmente os bits do proximo estado: **$D_1$ = bit alto do NS, $D_0$ = bit baixo do NS**.
>
> | PS | B | NS | $D_1$ | $D_0$ |
> |:---:|:---:|:---:|:---:|:---:|
> | 00 | 0 | 00 | **0** | **0** |
> | 00 | 1 | 01 | **0** | **1** |
> | 01 | 0 | 01 | **0** | **1** |
> | 01 | 1 | 10 | **1** | **0** |
> | 10 | 0 | 10 | **1** | **0** |
> | 10 | 1 | 00 | **0** | **0** |
> | 11 | 0 | XX | **X** | **X** |
> | 11 | 1 | XX | **X** | **X** |

**Mapas de Karnaugh:** ✗ Vazios

**Solucao — Mapa de Karnaugh para $D_1$:**

|     |     |     | $Q_0$ | $Q_0$ |
|:---:|:---:|:---:|:---:|:---:|
|     |  0  |  1  |  X  |  0  |
| $B$ |  0  |  0  |  X  |  1  |
|     |     | $Q_1$ | $Q_1$ |     |

Agrupamentos:
- Celulas com $Q_1=1$ na linha $\bar{B}$: grupo $Q_1 \cdot \bar{B}$ (inclui don't-care $Q_0 Q_1 = 11$)
- Celulas com $Q_0=1$ na linha $B$: grupo $Q_0 \cdot B$ (inclui don't-care $Q_0 Q_1 = 11$)

$$\boxed{D_1 = Q_0 \cdot B + Q_1 \cdot \bar{B}}$$

**Solucao — Mapa de Karnaugh para $D_0$:**

|     |     |     | $Q_0$ | $Q_0$ |
|:---:|:---:|:---:|:---:|:---:|
|     |  0  |  0  |  X  |  1  |
| $B$ |  1  |  0  |  X  |  0  |
|     |     | $Q_1$ | $Q_1$ |     |

Os dois 1s estao em posicoes **nao adjacentes** (diferem em $Q_0$ e $B$ ao mesmo tempo), por isso nao podem ser agrupados juntos.

Agrupamentos:
- Celula $B=1, Q_0 Q_1 = 00$ isolada → $\bar{Q_1} \cdot \bar{Q_0} \cdot B$
- Celula $B=0, Q_0 Q_1 = 10$ com don't-care $Q_0 Q_1 = 11$ → $Q_0 \cdot \bar{B}$

$$\boxed{D_0 = \bar{Q_1} \cdot \bar{Q_0} \cdot B + Q_0 \cdot \bar{B}}$$

> [!note] Nota
> $D_0$ nao simplifica para $Q_0 \oplus B$ como poderia parecer. A celula $Q_1=1, Q_0=0, B=1$ (estado 10 com $B=1$) tem $D_0 = 0$ (NS=00), enquanto $Q_0 \oplus B$ daria 1 nesse ponto. So quando $Q_1 = 0$ e que $D_0$ se comporta como XOR.

**Estimativa:** ~1.5/4 valores (diagrama e transicoes corretas, indicadores de zona corretos, mas faltam $D_1$/$D_0$ dos FF e Karnaugh)

---

## 1.3 — Remover Zona 3 (4 valores)

**O que o aluno fez:**

Diagrama com 2 estados (Z1/00, Z2/01). Tabela de transicao. Indicadores de zona ativa. Karnaugh tentados.

**Diagrama de estados:** ✅ Correto — $Z1 \xrightarrow{B=1} Z2 \xrightarrow{B=1} Z1$, com $B=0$ self-loops

**Tabela de transicao PS → NS:** ✅ Correta

| B | PS | NS |
|:---:|:---:|:---:|
| 0 | 00 | 00 |
| 1 | 00 | 01 |
| 0 | 01 | 01 |
| 1 | 01 | 00 |

**Indicadores de zona ativa:** ✅ Corretos (Z1→1,0; Z2→0,1)

**Mapas de Karnaugh:** Tentados, mas parecem ser para os indicadores de zona (saidas), nao para os inputs dos flip-flops.

**Solucao — Inputs dos flip-flops:**

Agora $Q_1$ nunca e 1 (estados 10 e 11 sao ambos inalcancaveis → tudo don't-care):

$$\boxed{D_1 = 0}$$

Para $D_0$ — mapa completo com don't-cares na linha $Q_1$ (estados 10 e 11 inalcancaveis):

|     |     |     | $Q_0$ | $Q_0$ |
|:---:|:---:|:---:|:---:|:---:|
|     |  0  |  X  |  X  |  1  |
| $B$ |  1  |  X  |  X  |  0  |
|     |     | $Q_1$ | $Q_1$ |     |

Agrupamentos (aproveitando os don't-cares):
- Celula $B=0, Q_0=1$ com don't-cares → $Q_0 \cdot \bar{B}$
- Celula $B=1, Q_0=0$ com don't-cares → $\bar{Q_0} \cdot B$

$$\boxed{D_0 = \bar{Q_0} \cdot B + Q_0 \cdot \bar{B} = Q_0 \oplus B}$$

> [!note] Diferenca face a 1.2
> A unica linha que muda na tabela: **PS=01, B=1** → NS passa de 10 para **00**.
> Aqui $D_0 = Q_0 \oplus B$ ja e valido porque o estado 10 (que complicava a expressao em 1.2) deixou de existir — e agora don't-care.
> $D_1 = 0$ porque so usamos estados 00 e 01 (o flip-flop $Q_1$ nunca e ativado).

**Estimativa:** ~1.5/4 valores (diagrama e transicoes corretas, Karnaugh tentados mas para as saidas em vez dos inputs dos FF)

---

## 1.4 — Autenticacao com flip-flops D (4 valores)

**O que o aluno fez:**

- PIN escolhido: "100" (3 bits)
- 3 flip-flops D em cascata (registo de deslocamento serie→paralelo)
- Circuito de reset com condensador + resistencia a +5V em cada FF (tecnica do professor!)
- SET ligado a "1" (inativo — active-low)
- Porta AND na saida para comparacao
- Dados em serie entram pelo D do primeiro FF

**Avaliacao:**

| Aspeto | Avaliacao |
|:---|:---:|
| Conceito de shift register | ✅ Correto |
| 3 FF D para 3 bits | ✅ Correto |
| Circuito RC no RESET (tecnica do professor) | ✅ Excelente |
| Ligacao em cascata (Q→D do seguinte) | ✅ Correto |
| CLK partilhado | ✅ Correto |
| Porta AND para comparacao | ✅ Presente |

**Pontos a melhorar:**

- **Comparacao para PIN "100":** a porta AND deveria receber $Q_2$, $\bar{Q_1}$, $\bar{Q_0}$ — ou seja, $Q$ do 1o FF e $\bar{Q}$ dos outros dois. Verificar se as ligacoes usam as saidas corretas ($Q$ vs $\bar{Q}$)
- **Falta explicacao** de que a comparacao so se faz apos os 3 clocks (todos os bits recebidos). Um contador de 2 bits ativaria o comparador quando atinge "11"

> [!note] Melhor resposta do teste
> Circuito demonstra boa compreensao pratica: shift register para armazenamento serie, RC reset (valorizado pelo professor), comparacao com porta logica.

**Estimativa:** ~2.5-3/4 valores

---

## 1.5 — Mealy: Detetar "101" (4 valores)

**O que o aluno fez:**

3 estados: SH (00), SS (01), SH (10). Diagrama de estados, tabela de transicao, expressao do alarme e circuito.

> [!warning] Erro fundamental nas transicoes
> A maquina desenhada deteta **"111"** (tres 1s consecutivos), NAO **"101"** que era pedido.
> As transicoes avancam sempre com $S=1$ ($00 \xrightarrow{1} 01 \xrightarrow{1} 10 \xrightarrow{1} 00$), quando deveriam seguir o padrao $1 \rightarrow 0 \rightarrow 1$.

**Tabela do aluno vs correta:**

| PS | S | NS (aluno) | NS (correto) | Alarme (aluno) | Alarme (correto) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| 00 | 0 | 00 ✅ | 00 | 0 ✅ | 0 |
| 00 | 1 | 01 ✅ | 01 | 0 ✅ | 0 |
| 01 | 0 | 01 ✗ | **10** | 0 ✅ | 0 |
| 01 | 1 | 10 ✗ | **01** | 0 ✅ | 0 |
| 10 | 0 | 10 ✗ | **00** | 0 ✅ | 0 |
| 10 | 1 | 00 ⚠️ | **01** | 1 ✅ | 1 |

**Explicacao dos erros:**

Para detetar "101", cada estado representa **o prefixo acumulado** da sequencia-alvo:

| Estou em | Recebi | Acumulei | Melhor prefixo de "101" | Vou para | Alarme |
|:---:|:---:|:---:|:---:|:---:|:---:|
| $E_0$ (nada) | 0 | "0" | nenhum | $E_0$ (00) | 0 |
| $E_0$ (nada) | 1 | "1" | "1" | $E_1$ (01) | 0 |
| $E_1$ ("1") | 0 | "10" | "10" | **$E_2$ (10)** | 0 |
| $E_1$ ("1") | 1 | "11" | "1" (ultimo 1) | **$E_1$ (01)** | 0 |
| $E_2$ ("10") | 0 | "100" | nenhum | **$E_0$ (00)** | 0 |
| $E_2$ ("10") | 1 | "101" | ALARME + "1" | **$E_1$ (01)** | **1** |

> [!important] Regra para transicoes Mealy (detetor de sequencia)
> Em cada estado, perguntar: **"que prefixo da sequencia-alvo tenho acumulado?"**
> - Estado 00 = nenhum prefixo
> - Estado 01 = tenho "1"
> - Estado 10 = tenho "10"
>
> Para cada entrada, perguntar: **"com este novo bit, qual e o prefixo MAIS LONGO de '101' que fica no final?"**
> - Em 01 (tenho "1"), recebo $0$ → tenho "**10**" → avancar para 10
> - Em 01 (tenho "1"), recebo $1$ → tenho "11" → o melhor prefixo e "**1**" → ficar em 01
> - Em 10 (tenho "10"), recebo $0$ → tenho "100" → nenhum prefixo → voltar a 00
> - Em 10 (tenho "10"), recebo $1$ → tenho "**101**" → ALARME! E o "1" inicia novo prefixo → ir para 01

**Expressao do alarme:** $\text{Alarme} = S \cdot Q_1 \cdot \bar{Q_0}$ — ✅ **Correta** (o alarme so ocorre em estado 10 com $S=1$, que e a mesma celula na tabela correta).

**Solucao — Mapa de Karnaugh para $D_1$:**

|     |     |     | $Q_0$ | $Q_0$ |
|:---:|:---:|:---:|:---:|:---:|
|     |  0  |  0  |  X  |  1  |
| $S$ |  0  |  0  |  X  |  0  |
|     |     | $Q_1$ | $Q_1$ |     |

Agrupamento: celula $S=0, Q_0=1$ com don't-care $Q_0 Q_1 = 11$ → $Q_0 \cdot \bar{S}$

$$\boxed{D_1 = Q_0 \cdot \bar{S}}$$

**Solucao — Mapa de Karnaugh para $D_0$:**

|     |     |     | $Q_0$ | $Q_0$ |
|:---:|:---:|:---:|:---:|:---:|
|     |  0  |  0  |  X  |  0  |
| $S$ |  1  |  1  |  X  |  1  |
|     |     | $Q_1$ | $Q_1$ |     |

Agrupamento: toda a linha $S=1$ contem 1s e X → $S$

$$\boxed{D_0 = S}$$

**Solucao — Mapa de Karnaugh para Alarme:**

|     |     |     | $Q_0$ | $Q_0$ |
|:---:|:---:|:---:|:---:|:---:|
|     |  0  |  0  |  X  |  0  |
| $S$ |  0  |  1  |  X  |  0  |
|     |     | $Q_1$ | $Q_1$ |     |

Agrupamento: celula $S=1, Q_1=1$ com don't-care $Q_0 Q_1 = 11$ → $Q_1 \cdot S$

$$\boxed{\text{Alarme} = Q_1 \cdot S}$$

> [!note] Nota
> O aluno escreveu $\text{Alarme} = S \cdot Q_1 \cdot \bar{Q_0}$, que e valida sem usar don't-care. Com o don't-care do estado 11, simplifica para $Q_1 \cdot S$.

**Verificacao com sequencia "1-0-1-0-1":**

| Clock | S | Estado | Alarme | Nota |
|:---:|:---:|:---:|:---:|:---|
| — | — | $E_0$ (00) | 0 | Inicio |
| 1 | 1 | $E_1$ (01) | 0 | Prefixo "1" |
| 2 | 0 | $E_2$ (10) | 0 | Prefixo "10" |
| 3 | 1 | $E_1$ (01) | **1** | "101" → ALARME |
| 4 | 0 | $E_2$ (10) | 0 | Novo prefixo "10" (sobreposicao) |
| 5 | 1 | $E_1$ (01) | **1** | "101" novamente → ALARME |

**Estimativa:** ~1.5/4 valores (estrutura e alarme corretos, transicoes erradas)

---

## 1.6 — Visualizacao no display (2 valores)

**O que o aluno fez:**

- DEMUX com entrada fixa "1" e $\overline{EN}$ (enable ativo baixo)
- Bits de estado ($I_1$, $I_0$) como linhas de selecao
- 3 displays de 7 segmentos, cada um pre-configurado para mostrar um numero (o aluno nota que na realidade seria um so display)
- Tabela: Zona 1→(0,0), Zona 2→(0,1), Zona 3→(1,0), [4→(1,1) nao usado]

**Avaliacao:**

- Principio correto: usar bits de estado para selecionar o que mostrar ✅
- DEMUX para encaminhar sinal ao display correto ✅
- Tabela de mapeamento zona→binario ✅
- Reconhece que seria um unico display ✅

> [!note] Melhoria para display unico
> Com **um so display**, o ideal seria um **descodificador estado→segmentos**:
> - Entradas: $Q_1$, $Q_0$ (estado da maquina de 1.2)
> - Saidas: $a, b, c, d, e, f, g$ (segmentos do display)
> - Tabela: estado 00→"1" (segmentos b,c), estado 01→"2" (segmentos a,b,d,e,g), estado 10→"3" (segmentos a,b,c,d,g)
> - Para cada segmento, uma funcao logica simples com 2 variaveis

**Estimativa:** ~1.5/2 valores

---

## Resumo

| Alinea | Cotacao | Estimativa | Notas |
|:---:|:---:|:---:|:---|
| 1.1 | 2v | ~1-1.5v | Diagrama simples e direto, alinhado com o estilo do professor |
| 1.2 | 4v | ~1.5v | Diagrama e transicoes corretas, indicadores de zona corretos, faltam $D_1$/$D_0$ dos FF |
| 1.3 | 4v | ~1.5v | Diagrama e transicoes corretas, Karnaugh tentados mas para as saidas |
| 1.4 | 4v | ~2.5-3v | Melhor resposta — shift register, RC reset, AND comparador |
| 1.5 | 4v | ~1.5v | Deteta "111" em vez de "101"; alarme correto |
| 1.6 | 2v | ~1.5v | Principio correto, DEMUX valido |
| **Total** | **20v** | **~10-11v** | |

---

## Pontos-chave para estudar

> [!important] 1. Inputs dos flip-flops ($D_1$, $D_0$)
> Na tabela de transicao, alem das colunas de PS, NS, entrada e saidas, e preciso adicionar os **inputs dos flip-flops**:
> $$D_i = \text{bit } i \text{ do proximo estado (NS)}$$
> Sao estes valores que entram nos mapas de Karnaugh para obter as expressoes booleanas que permitem construir o circuito.

> [!important] 2. Transicoes Mealy para detecao de sequencias
> Nao e "avancar com 1 e ficar com 0". Cada transicao deve perguntar:
> **"Que prefixo da sequencia-alvo tenho acumulado apos receber este bit?"**
> - Se o novo bit continua o padrao → avancar para o proximo estado
> - Se o novo bit quebra o padrao → voltar ao **melhor prefixo possivel** (nem sempre e o inicio!)

> [!note] 3. O que esta bem
> - Diagramas de estados bem desenhados em todas as alineas
> - Tabelas PS→NS sempre corretas
> - Circuito da 1.4 excelente (shift register + RC reset)
> - Conceitos gerais solidos — falta a ponte entre a tabela e o circuito (mapas de Karnaugh dos inputs dos FF)
