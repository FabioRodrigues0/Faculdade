# Correcao do Sim Test — DroneRace (ISD)

> [!info] Contexto
> Correcao das respostas dadas no **Sim Test.pdf** ao teste simulado do cenario DroneRace (teste_isd.md).
> **Data:** 2026-02-11

---

## 1.1 — Diagrama de Blocos (2 valores)

### O que fizeste
- Diagrama: Cartao → [F.F(JK) / DEMUX] → Entrada/Saida
- Descreveste o DEMUX para identificar canais e FFs para guardar estado

### Avaliacao
**Abordagem aceitavel.** Mostraste a entrada (cartao), o bloco de processamento (DEMUX + FF) e a saida. Na 1.1 so conheces o cenario geral descrito no enunciado introdutorio, por isso nao faz sentido mencionar sensores meteorologicos, codigo de arranque ou sensores de posicao — isso so aparece nas alineas seguintes.

O professor valoriza que identifiques a componente combinatoria vs sequencial (ver DocScanner Teste B pag 5: "A solucao tem uma componente em logica combinatoria para acao imediata de acesso. A parte de contagens/temporizacoes implicara uma maquina de Moore/Mealy"). Se adicionasses uma frase deste tipo, reforçava a resposta.

### Pequena melhoria possivel
- Mencionar que o sistema tem uma parte combinatoria (validacao imediata) e uma parte sequencial (processos com memoria/estados)

---

## 1.2 — Validacao de Acesso do Piloto (4 valores)

### O que fizeste
- Tabela de verdade com A, B, C, D, F1, F2
- Mapas de Karnaugh para F1 e F2
- F1 = CB + CAD + C̄B̄DĀ
- F2 = C + (A⊕B)
- Circuito com portas logicas

### Problemas na tabela de verdade

Os codigos autorizados sao: $0010$, $0110$, $1010$, $1011$, $1110$.

Verificando a expressao F1 = CB + CAD + C̄B̄DĀ:
- CB gera 1 para 0110 e 0111 — mas 0111 NAO e autorizado
- C̄B̄DĀ gera 1 para 0001 — NAO e autorizado
- Isto indica erros na construcao da tabela de verdade que propagaram para o K-map

### Tabela de verdade correta

| A | B | C | D | Autorizado | Alarme |
|---|---|---|---|------------|--------|
| 0 | 0 | 0 | 0 | 0 | 1 |
| 0 | 0 | 0 | 1 | 0 | 1 |
| 0 | 0 | 1 | 0 | **1** | 0 |
| 0 | 0 | 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 0 | 0 | 1 |
| 0 | 1 | 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 | **1** | 0 |
| 0 | 1 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 0 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 1 |
| 1 | 0 | 1 | 0 | **1** | 0 |
| 1 | 0 | 1 | 1 | **1** | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 1 | 0 | **1** | 0 |
| 1 | 1 | 1 | 1 | 0 | 1 |

### Mapa de Karnaugh — Autorizado

```
          CD
AB    00  01  11  10
00     0   0   0   1
01     0   0   0   1
11     0   0   0   1
10     0   0   1   1
```

**Grupo 1:** Coluna CD=10, todas as linhas AB → $C\bar{D}$ (4 celulas)
**Grupo 2:** Celulas (1010) e (1011), AB=10 → $A\bar{B}C$ (2 celulas)

$$\boxed{\text{Autorizado} = C\bar{D} + A\bar{B}C}$$

### Alarme

$$\boxed{\text{Alarme} = \overline{\text{Autorizado}} = \bar{C} + \bar{A}D + BD}$$

### Elite (codigo impar)

O enunciado diz "sempre que o codigo do piloto for impar" — interpretacao valida: **Elite = D** (bit menos significativo a 1 significa impar). Isto e independente de ser autorizado ou nao. Se justificares esta interpretacao, esta correto.

Se quiseres restringir a autorizados E impares: so 1011 → $\text{Elite} = A\bar{B}CD$

Ambas as interpretacoes sao aceitaveis com justificacao.

---

## 1.3 — Selecao de Percurso com MUX 8:1 (4 valores)

### O que fizeste
- MUX 8:1 (74LS151) com P0-P7 como entradas de dados
- 3 sensores: S0=vento, S1=chuva, S2=neve como linhas de selecao
- Explicaste que quando sensor deteta condicao (muda de 0→1), isso altera o codigo de selecao e determina o percurso

### Avaliacao
**Correto.** O conceito esta bem aplicado:
- 3 bits dos sensores → linhas de selecao (S2, S1, S0)
- 8 percursos → entradas de dados (D0-D7)
- O que interessa e o mecanismo de selecao digital (combinacao binaria 000-111), nao a descricao fisica de cada percurso

### Sugestao para reforcar
- Indicar os pinos concretos do 74LS151 (pinout) para mostrar que conheces o CI
- Mencionar o pino Enable (ligado a GND para ativo)

---

## 1.4 — Verificacao do Codigo de Arranque com Flip-Flops D (4 valores)

### O que fizeste
- 3 flip-flops D em cascata (registo de deslocamento serie-paralelo)
- SET ligado a '1' (inativo, correto para active-low)
- Circuito de power-on reset com condensador + resistencia + 5V
- Codigo definido como 001
- AND no final: Q do 1o FF, Q̄ do 2o e 3o FF → como codigo e 001, os 0s invertidos dao 1, logo AND(1,1,1) = ativacao

### Avaliacao
**Correto.** A resposta esta bem estruturada:
1. **Registo de deslocamento** para receber os 3 bits em serie — correto
2. **Circuito de comparacao** com AND + inversores no final — correto, exactamente a abordagem $\text{Ativacao} = \bar{Q_2} \cdot \bar{Q_1} \cdot Q_0$ para codigo 001
3. **Reset com condensador + resistencia** — correto, o professor usa esta tecnica nas aulas e na correcao (DocScanner)

### Sem correcoes necessarias nesta alinea

---

## 1.5 e 1.6 — Nao realizados

Ficaram por fazer porque o teste tinha cenarios independentes em cada pergunta, tornando-se extenso. Ver `notas_formato_teste_isd.md` sobre como o professor estrutura testes de forma incremental para evitar este problema.

---

## Resumo

| Questao | Avaliacao |
|---------|-----------|
| 1.1 | Aceitavel — podia mencionar componente combinatoria vs sequencial |
| 1.2 | Tabela de verdade com erros → expressoes e circuito afetados. Expressoes corretas: Autorizado = $C\bar{D} + A\bar{B}C$, Alarme = $\bar{C} + \bar{A}D + BD$ |
| 1.3 | Correto — conceito bem aplicado |
| 1.4 | Correto — registo + comparacao + reset, tudo bem |
| 1.5 | Nao feito |
| 1.6 | Nao feito |
